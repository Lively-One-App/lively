import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:lively/src/feature/music/bloc/map/map_bloc.dart';

class MapScreen extends StatelessWidget {
  MapScreen({Key? key}) : super(key: key);
  MapController _mapCtrl = MapController();
  List<Marker> myMarkers = [
    Marker(
        point: LatLng(51.509364, -0.128928),
        builder: (ctx) => const ImageIcon(AssetImage('assets/marker_map.png'))),
  ];
  List<Marker> livelyMarkers= [];


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
                  _mapCtrl.move(LatLng(state.position.latitude, state.position.longitude), 18) ;
        }
        ;
        // TODO: implement listener
      },
      child: Stack(
        children: [
          FlutterMap(
            mapController: _mapCtrl,
            options:
                MapOptions(center: LatLng(51.509364, -0.128928), zoom: 9.2, maxZoom: 18),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              ),
              MarkerLayer(
                markers: myMarkers,
              ),
              MarkerLayer(
                markers: livelyMarkers,
              )
            ],
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
                    ImageIcon(
                      AssetImage('assets/marker_map.png'),
                      color: Colors.red,
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
