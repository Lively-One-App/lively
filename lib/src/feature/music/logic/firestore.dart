import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:lively/credential/supabase_cred.dart';

import '../model/firestore/city_data.dart';
import 'online_store_impl.dart';

class Firestore implements OnlineStoreImpl {
  //final _store = FirebaseFirestore.instance;
  final _store = supabase;

  //RealtimeChannel sup = supabase.client.channel('public:geoPoints');

  //StreamController controller = StreamController<String>();

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
  Stream getRunString() async* {
    
    //final channelGeoPoints = supabase.channel('channelGeoPoints');
    final Stream request =
        await _store.client.from('runString').stream(primaryKey: ['id']);
        //.where((event) =>event[0]['city']=='moscow');

    yield* request;
  }


  Stream getMarkers() async* {
    //final channelGeoPoints = supabase.channel('channelGeoPoints');
    final Stream request =
        await _store.client.from('geoPoints').stream(primaryKey: ['id']);

    yield* request;
  }

  void setData(final String nameCity) async {
    // await _store
    //     .collection('cities')
    //     .doc(nameCity)
    //     .update({'likes': FieldValue.increment(1)});
  }

  void addUpdateMarker(final Position position, final String city, final String devInfo) async {

    List res = await supabase.client.from('geoPoints').update({
          'lat': position.latitude,
          'lng': position.longitude,
          'city':'Moscow'
          
        }).eq('devid',devInfo).select();
        if(res.length == 0){
           await supabase.client.from('geoPoints').insert({
          'lat': position.latitude,
          'lng': position.longitude,
          'city':'Moscow',
          'devid':devInfo
          });

        }
   
  }
  void removeMarker(String id) {
    supabase.client.from('geoPoints').delete().eq('devid', id);
  }
  
 
}
