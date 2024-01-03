import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart';
import 'package:lively/src/feature/music/bloc/map/map_bloc.dart';

class MapScreen extends StatelessWidget {
  MapScreen({Key? key}) : super(key: key);
  MapController _mapCtrl = MapController();
  List<Marker> myMarkers = [
    Marker(
        point: LatLng(55.7522, 37.6156),
        builder: (ctx) => const ImageIcon(AssetImage('assets/marker_map.png'))),
  ];
  // List<Marker> livelyMarkers = [
  //   Marker(
  //       point: LatLng(55.7522, 37.5156),
  //       builder: (ctx) => const ImageIcon(AssetImage('assets/marker_map.png'))),
  //   Marker(
  //       point: LatLng(55.7522, 37.6556),
  //       builder: (ctx) => const ImageIcon(AssetImage('assets/marker_map.png'))),
  //   Marker(
  //       point: LatLng(55.7522, 37.6176),
  //       builder: (ctx) => const ImageIcon(AssetImage('assets/marker_map.png'))),
  //   Marker(
  //       point: LatLng(55.7522, 37.6156),
  //       builder: (ctx) => const ImageIcon(AssetImage('assets/marker_map.png'))),
  //   Marker(
  //       point: LatLng(55.7522, 37.6176),
  //       builder: (ctx) => const ImageIcon(AssetImage('assets/marker_map.png'))),
  // ];

  @override
  Widget build(BuildContext context) {
    MapBloc mapBloc = BlocProvider.of<MapBloc>(context);

    return BlocListener<MapBloc, MapState>(
      listener: (context, state) {
        if (state is PositionChanged) {
          myMarkers.clear();
          myMarkers.add(Marker(
              point: LatLng(state.position.latitude, state.position.longitude),
              builder: (ctx) =>
                  const ImageIcon(AssetImage('assets/marker_map.png'))));
          _mapCtrl.move(
              LatLng(state.position.latitude, state.position.longitude), 13);
        }
        // if (state is FetchChangeMarkers) {
        //   livelyMarkers.clear();

        //   for (int i = 0; i <= state.listMarkers.length - 1; i++) {
        //     livelyMarkers.add(Marker(
        //         point: LatLng(state.listMarkers[i]['latitude'],
        //             state.listMarkers[i]['longitude']),
        //         builder: (ctx) =>
        //             const ImageIcon(AssetImage('assets/marker_map.png'))));
        //   }

        //   // state.listMarkers.forEach((element) {
        //   //   livelyMarkers.add(Marker(
        //   //       point: LatLng(element['latitude'], element['longitude']),
        //   //       builder: (ctx) =>
        //   //           const ImageIcon(AssetImage('assets/marker_map.png'))));
        //   // });
        // }
        ;
        // TODO: implement listener
      },
      child: Stack(
        children: [
          BlocBuilder<MapBloc, MapState>(
            buildWhen: (previous, current) => current is FetchChangeMarkers,
            builder: (context, state) {
              return FlutterMap(
                mapController: _mapCtrl,
                options: MapOptions(
                    center: LatLng(55.7522, 37.6156),
                    zoom: 9.2,
                    maxZoom: 18,
                    interactiveFlags:
                        InteractiveFlag.all & ~InteractiveFlag.rotate),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  ),
                  MarkerLayer(
                    markers: myMarkers,
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
                    markers: List.generate(
                        state.listMarkers.length,
                        (index) => Marker(
                            point: LatLng(state.listMarkers[index]['latitude'],
                                state.listMarkers[index]['longitude']),
                            builder: (ctx) => const Image( image:
                                AssetImage('assets/marker_map.png')))),
                    builder: (BuildContext context, List<Marker> marks) {
                      return Stack(children: [
                        const Image(image: AssetImage('assets/marker_map_count.png')),
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
                  )),
                  
                ],
              );
            },
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.9,
            left: MediaQuery.of(context).size.width * 0.2,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(248, 247, 247, 1)),
                onPressed: () {},
                child: const Row(
                  children: [
                    Text(
                      'Поделиться геопозицией ',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      height: 41,
                      width: 41,
                      child: Image(
                        image: AssetImage('assets/marker_map.png'),
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
