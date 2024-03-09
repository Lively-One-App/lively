import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';

import 'package:flutter_svg/svg.dart';

import 'package:latlong2/latlong.dart';
import 'package:lively/src/feature/music/bloc/map/map_bloc.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen>
    with SingleTickerProviderStateMixin {
  late final MapController _mapCtrl;
  late AnimationController _cameraAnimationController;
  bool isShareMyPosition = false;
  LatLng? lastPosition;
  final double cameraZoom = 13;
  List<Marker> markers = [
    // Marker(
    //     point: LatLng(55.7522, 37.6156),
    //     builder: (ctx) => const ImageIcon(AssetImage('assets/marker_map.png'))),
  ];
  @override
  void initState() {
    super.initState();
    _mapCtrl = MapController();
    _cameraAnimationController = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    if (BlocProvider.of<MapBloc>(context).state.listMarkers.isNotEmpty) {
      BlocProvider.of<MapBloc>(context).state.listMarkers.forEach((element) {
        markers.add(Marker(
            point: LatLng(element['latitude'], element['longitude']),
            builder: (ctx) =>
                const ImageIcon(AssetImage('assets/marker_map_count.png'))));
      });
      isShareMyPosition =
          BlocProvider.of<MapBloc>(context).state.isShareMyPosition;
      if (isShareMyPosition) {
        BlocProvider.of<MapBloc>(context)
            .add(const GetLastKnownPositionEvent());
      }
    }
  }

  @override
  void dispose() {
    _mapCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.apply(bodyColor: Colors.black);

    return BlocListener<MapBloc, MapState>(
      listener: (context, state) {
        if (state is PositionChanged) {
          lastPosition =
              LatLng(state.position.latitude, state.position.longitude);
          _animatedMapMove(
              LatLng(state.position.latitude, state.position.longitude),
              //cameraZoom
              _mapCtrl.zoom
              
              );
        }
        if (state.isShareMyPosition != isShareMyPosition) {
          setState(() {
            isShareMyPosition = state.isShareMyPosition;
          });
        }
        if (state is FetchChangeMarkers) {
          setState(() {
            markers.clear();
            state.listMarkers.forEach((element) {
              markers.add(Marker(
                  point: LatLng(element['latitude'], element['longitude']),
                  builder: (ctx) => const ImageIcon(
                      AssetImage('assets/marker_map_count.png'))));
            });
            markers = List.from(markers);
          });
        }
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          FlutterMap(
            mapController: _mapCtrl,
            options: MapOptions(
                center: LatLng(55.7522, 37.6156),
                //zoom: 9.2,
                maxZoom: 18,
                interactiveFlags:
                    InteractiveFlag.all & ~InteractiveFlag.rotate),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              ),
              MarkerClusterLayerWidget(
                  options: MarkerClusterLayerOptions(
                maxClusterRadius: 45,
                size: const Size(30, 30),
                anchor: AnchorPos.align(AnchorAlign.center),
                fitBoundsOptions: const FitBoundsOptions(
                  padding: EdgeInsets.all(50),
                  maxZoom: 15,
                ),
                markers: markers,
                builder: (BuildContext context, List<Marker> marks) {
                  return Stack(children: [
                    const Image(
                        image: AssetImage('assets/marker_map_count.png')),
                    Positioned(
                      top: 5,
                      left: marks.length > 9 ? 5 : 8,
                      child: Text(
                        marks.length > 99 ? '99+' : marks.length.toString(),
                        style: const TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            color: Colors.white),
                      ),
                    ),
                  ]);
                },
              ))
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.87,
            left: MediaQuery.of(context).size.width * 0.05,
            child: BlocBuilder<MapBloc, MapState>(
              buildWhen: (previous, current) {
                return current is OnSharedPositionState || current is OffSharedPositionEvent;
              },
              builder: (context, state) {
                return GestureDetector(
                  onTap: () {
                    isShareMyPosition
                        ? BlocProvider.of<MapBloc>(context).add(const OffSharedPositionEvent())
                        : BlocProvider.of<MapBloc>(context).add(const OnSharedPositionEvent());
                  },
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          boxShadow: [
                            
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset:
                                  const Offset(0, 5), // changes position of shadow
                            ),
                          ],
                          color: const Color.fromRGBO(248, 247, 247, 1),
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            isShareMyPosition 
                                ? 'Перестать делиться'
                                : 'Поделиться геопозицией',
                            style: textTheme.bodyMedium,
                          ),
                          SizedBox(
                            height: 35,
                            width: 35,
                            child: SvgPicture.asset('assets/marker_map.svg')
                          )
                        ],
                      )),
                );
              },
            ),
          ),
          Positioned(
              right: 0,
              
              top: MediaQuery.of(context).size.height * 0.32,

              child: GestureDetector(
                  child: SvgPicture.asset('assets/close_map.svg'),
                  onTap: () {

                    Navigator.pop(context);
                  })),
        ],
      ),
    );
  }

  void _animatedMapMove(LatLng destLocation,
   double destZoom
   ) async {
    // Create some tweens. These serve to split up the transition from one location to another.
    // In our case, we want to split the transition be<tween> our current map center and the destination.
    final latTween = Tween<double>(
        begin: _mapCtrl.center.latitude, end: destLocation.latitude);
    final lngTween = Tween<double>(
        begin: _mapCtrl.center.longitude, end: destLocation.longitude);
    final zoomTween = Tween<double>(begin: _mapCtrl.zoom,
     end: destZoom
     );

    // Create a animation controller that has a duration and a TickerProvider.

    // The animation determines what path the animation will take. You can try different Curves values, although I found
    // fastOutSlowIn to be my favorite.
    final Animation<double> animation = CurvedAnimation(
        parent: _cameraAnimationController, curve: Curves.fastOutSlowIn);

    _cameraAnimationController.addListener(() {
      _mapCtrl.move(
          LatLng(latTween.evaluate(animation), lngTween.evaluate(animation)),
          zoomTween.evaluate(animation));
    });
    _cameraAnimationController.reset();

    _cameraAnimationController.forward();
  }
}