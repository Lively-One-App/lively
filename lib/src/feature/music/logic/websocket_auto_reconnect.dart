import 'dart:async';
import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:lively/src/feature/music/model/azura_model/azura_model.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketAutoReconnect {
  final Uri _uri;
  final int delay;
  final _myWebSocketController = StreamController<AzuraApiModel>.broadcast();
   WebSocketChannel? _webSocketChannel;
  final _connectivity = Connectivity();
  StreamSubscription? _connectivitySubscription;

  WebSocketAutoReconnect(Uri uri, {this.delay = 10}) : _uri = uri {
    _connect();
    _listenToConnectivity();
  }

  Stream<AzuraApiModel> get stream => _myWebSocketController.stream;

  StreamSink<AzuraApiModel> get sink => _myWebSocketController.sink;

  void _connect() async {
    _webSocketChannel = WebSocketChannel.connect(_uri);
    _webSocketChannel?.sink
        .add('{ "subs": { "station:lively": {}, "global:time": {} }}');

    _webSocketChannel?.stream.map((event) {
      Map<String, dynamic> temp = jsonDecode(event);

      if (!temp.containsKey('pub') || !temp['pub']['data'].containsKey('np')) {
        return null;
      }
      var res = AzuraApiModel.fromMap(temp['pub']['data']['np']);

      return res;
    }).listen((event) {
      if (event != null) {
        _myWebSocketController.add(event);
      }
    }, onError: (e) async {
      
      _myWebSocketController.addError(e);
      await Future.delayed(Duration(seconds: delay));
      _connect();
    }, 

    onDone: () async {
      _myWebSocketController.addError(TimeoutException('time is up'));
      _connect();
    }, cancelOnError: true);

    
  }

  void _listenToConnectivity() {
    _connectivitySubscription = _connectivity.onConnectivityChanged
        .skip(2)
        .distinct()
        .listen((ConnectivityResult result) async {
      if (result == ConnectivityResult.none) {
        _myWebSocketController.addError(TimeoutException('time is up'));
      } else {
        await _webSocketChannel?.sink.close();
      }
    });
  }

  void dispose() {
    _webSocketChannel?.sink.close();
    _myWebSocketController.close();
    _connectivitySubscription?.cancel();
  }
}
