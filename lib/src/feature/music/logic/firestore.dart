//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';

import '../model/firestore/city_data.dart';
import 'online_store_impl.dart';

class Firestore implements OnlineStoreImpl {
  //final _store = FirebaseFirestore.instance;

  get yield => null;

  Stream<CityData> getData(final String nameCity) async* {
    //final request = await _store.collection('cities').doc(nameCity).snapshots();

    // var a =
    //     await _store.collection('cities').doc(nameCity).update({'likes': 0});

    // yield* request.map((event) {
    //   var temp = event.data();

    //   return CityData.fromJson(event.data()!);
    // });
  }

  Stream<List<Map>> getMarkers() async* {
    //final request = await _store.collection('livelymarkers').snapshots();

    // yield* request.map((event) {
    //   List<Map> listMarkers = [];

    //   //request.listen((event) {
    //     //listMarkers.clear();

    //     event.docs.forEach((element) {
    //       var temp = element.data();

    //       listMarkers.add({
    //         'latitude': temp['position']['latitude'],
    //         'longitude': temp['position']['longitude']
    //       });
    //     });
    //   //});

    //   return listMarkers;
    // });
  }

  void setData(final String nameCity) async {
    // await _store
    //     .collection('cities')
    //     .doc(nameCity)
    //     .update({'likes': FieldValue.increment(1)});
  }

  void addMarker(final Position position) async {
    // await _store.collection('livelymarkers').add({
    //   'position': {
    //     'latitude': position.latitude,
    //     'longitude': position.longitude
    //   }
    // });
  }
}
