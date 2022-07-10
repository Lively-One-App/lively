import 'dart:async';

import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketAutoReconnect {
  final Uri _uri;
  final int delay;
  final StreamController<dynamic> _recipientCtrl = StreamController<dynamic>();
  final StreamController<dynamic> _sentCtrl = StreamController<dynamic>();

  late final WebSocketChannel _webSocketChannel;

  Stream<dynamic> get stream => _recipientCtrl.stream;

  StreamSink<dynamic> get sink => _sentCtrl.sink;

  WebSocketAutoReconnect(Uri uri, {this.delay = 5}) : _uri = uri {
    _sentCtrl.stream.listen((event) {
      _webSocketChannel.sink.add(event);
    });
    _connect();
  }

  void _connect() {
    _webSocketChannel = WebSocketChannel.connect(_uri);
    _webSocketChannel.stream.listen((event) {
      _recipientCtrl.add(event);
    }, onError: (e) async {
      _recipientCtrl.addError(e);
      await Future.delayed(Duration(seconds: delay));
      _connect();
    }, onDone: () async {
      await Future.delayed(Duration(seconds: delay));
      _connect();
    }, cancelOnError: true);
  }
}
