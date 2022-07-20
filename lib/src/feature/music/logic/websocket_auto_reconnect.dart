import 'dart:async';

import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketAutoReconnect {
  final Uri _uri;
  final int delay;
  final _myWebSocketController = StreamController<dynamic>();
  late WebSocketChannel _webSocketChannel;

  WebSocketAutoReconnect(Uri uri, {this.delay = 5}) : _uri = uri {
    _connect();
  }

  Stream<dynamic> get stream => _myWebSocketController.stream;

  StreamSink<dynamic> get sink => _myWebSocketController.sink;

  void _connect() {
    _webSocketChannel = WebSocketChannel.connect(_uri);

    _webSocketChannel.stream
        .timeout(
      const Duration(seconds: 15),
      onTimeout: (sink) => sink.addError(TimeoutException('time is up')),
    )
        .listen((event) {
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
