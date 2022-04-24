import 'package:bloc/bloc.dart';

import '../../logic/online_radio_impl.dart';
import '../../model/azuracast/azura_api_now_playing.dart';

class AzureCubit extends Cubit<AzuraApiNowPlaying?> {
  AzureCubit(final OnlineRadioImpl onlineRadio)
      : _onlineRadio = onlineRadio,
        super(null) {
    _onlineRadio.nowPlayingStream().listen((event) {
      emit(event);
    });
  }
  final OnlineRadioImpl _onlineRadio;
}
