import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'music_event.dart';
part 'music_state.dart';
part 'music_bloc.freezed.dart';

class MusicBloc extends Bloc<MusicEvent, MusicState> {
  MusicBloc() : super(_Initial()) {
    on<MusicEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
