import 'dart:async';
import 'dart:convert';

import 'package:web_socket_channel/web_socket_channel.dart';

import '../model/azuracast/azura_api_now_playing.dart';

class WebSocketAutoReconnect {
  final Uri _uri;
  final int delay;
  final _myWebSocketController =
      StreamController<AzuraApiNowPlaying>.broadcast();
  late WebSocketChannel _webSocketChannel;

  WebSocketAutoReconnect(Uri uri, {this.delay = 10}) : _uri = uri {
    _connect();
  }

  Stream<AzuraApiNowPlaying> get stream => _myWebSocketController.stream;

  StreamSink<AzuraApiNowPlaying> get sink => _myWebSocketController.sink;

  void _connect() async {

    
    _webSocketChannel = await WebSocketChannel.connect(
      _uri,
    );
    _webSocketChannel.sink
        .add('{ "subs": { "station:lively": {}, "global:time": {} }}');
    

    _webSocketChannel.stream
        .timeout(
      const Duration(seconds: 20),
      onTimeout: (sink) => sink.addError(TimeoutException('time is up')),
    )
        .map((event) {
      Map<String,dynamic> temp = jsonDecode(event);
      
      //var res = AzuraApiNowPlaying.fromJson(jsonDecode(event));
      
      if(
        !temp.containsKey('pub')||!temp['pub']['data'].containsKey('np')
       
        ){
         return null;
       }
      var res = AzuraApiNowPlaying.fromJson(temp['pub']['data']['np']);

           

      return res;
    }).listen((event) {
      
      if(event!= null){
      _myWebSocketController.add(event);}

    }, onError: (e) async {
      //_myWebSocketController.addError(e);
      await Future.delayed(Duration(seconds: delay));
      _connect();
    }, onDone: () async {
      await Future.delayed(Duration(seconds: delay));
      _connect();
    }, cancelOnError: true);
  }

  void dispose() {
    _webSocketChannel.sink.close();
    _myWebSocketController.close();
  }
}
