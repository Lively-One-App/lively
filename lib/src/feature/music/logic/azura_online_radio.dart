import 'package:dio/dio.dart';

import '../model/azuracast/azura_api_now_playing.dart';

import 'online_radio_impl.dart';

class AzuraOnlineRadio implements OnlineRadioImpl {
  final Dio _dio = Dio();

  AzuraOnlineRadio(String baseUrl) {
    _dio.options = BaseOptions(baseUrl: baseUrl);
  }

  @override
  Future<AzuraApiNowPlaying> nowPlaying() async {
    final Response<dynamic> response = await _dio.get('/nowplaying');
    final azuraNowPlaying = AzuraApiNowPlaying.fromJson(response.data[0]);
    return azuraNowPlaying;
  }
}
