import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../logic/websocket_auto_reconnect.dart';
import '../../model/azuracast/azura_api_now_playing.dart';

part 'azuracast_state.dart';
part 'azuracast_cubit.freezed.dart';

class AzuraCastCubit extends Cubit<AzuraCastState> {
  AzuraCastCubit(WebSocketAutoReconnect socket)
      : _socket = socket,
        super(const AzuraCastState.initial()) {
    _socket.stream
        .timeout(
      const Duration(seconds: 15),
    )
        .map((event) {
      return AzuraApiNowPlaying.fromJson(jsonDecode(event));
    }).listen(
      (event) {
        emit(AzuraCastState.getAzuraCast(event));
      },
      onError: (error) => emit(const AzuraCastState.error()),
    );
  }

  late final WebSocketAutoReconnect _socket;

  @override
  Future<void> close() {
    return super.close();
  }
}
