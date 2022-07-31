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

  WebSocketAutoReconnect(Uri uri, {this.delay = 5}) : _uri = uri {
    _connect();
  }

  Stream<AzuraApiNowPlaying> get stream => _myWebSocketController.stream;

  StreamSink<AzuraApiNowPlaying> get sink => _myWebSocketController.sink;

  void _connect() {
    _webSocketChannel = WebSocketChannel.connect(_uri);

    _webSocketChannel.stream
        .timeout(
      const Duration(seconds: 20),
      onTimeout: (sink) => sink.addError(TimeoutException('time is up')),
    )
        .map((event) {
      return AzuraApiNowPlaying.fromJson(jsonDecode(event));
    }).listen((event) {
      _myWebSocketController.add(event);
    }, onError: (e) async {
      _myWebSocketController.addError(e);
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
