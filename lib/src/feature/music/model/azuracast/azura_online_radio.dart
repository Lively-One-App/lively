import 'package:lively/src/feature/music/logic/current_song.dart';
import 'package:lively/src/feature/music/logic/now_playing.dart';
import 'package:lively/src/feature/music/logic/online_radio.dart';
import 'package:dio/dio.dart';
import 'package:lively/src/feature/music/logic/radio_listeners.dart';
import 'package:lively/src/feature/music/logic/song.dart';
import 'package:lively/src/feature/music/logic/station.dart';
import 'package:lively/src/feature/music/model/azuracast/azura_api_now_playing.dart';
import 'package:lively/src/feature/music/model/azuracast/azura_api_now_playing_current_song.dart';
import 'package:lively/src/feature/music/model/azuracast/azura_api_now_playing_listeners.dart';
import 'package:lively/src/feature/music/model/azuracast/azura_api_now_playing_station.dart';
import 'package:lively/src/feature/music/model/azuracast/azura_api_song.dart';

const String nowPlayingCommand = 'nowplaying';

class AzuraOnlineRadio implements OnlineRadio {
  AzuraOnlineRadio({required this.apiUrl});
  @override
  final String apiUrl;
  final Dio _dio = Dio();

  @override
  Future<NowPlaying> nowPlaying() async {
    final Response<dynamic> response =
        await _dio.get(apiUrl + nowPlayingCommand);
    AzuraApiNowPlaying azuraNowPlaying =
        AzuraApiNowPlaying.fromJson(response.data[0]);
    AzuraApiNowPlayingCurrentSong azuraCurrentSong = azuraNowPlaying.nowPlaying;
    AzuraApiSong azuraSong = azuraCurrentSong.song;
    Song song = Song(
        id: azuraSong.id,
        text: azuraSong.text,
        artist: azuraSong.artist,
        title: azuraSong.title,
        album: azuraSong.album,
        genre: azuraSong.genre,
        lyrics: azuraSong.lyrics,
        art: azuraSong.art);
    CurrentSong currentSong = CurrentSong(
        elapsed: azuraCurrentSong.elapsed,
        remaining: azuraCurrentSong.remaining,
        shId: azuraCurrentSong.shId,
        playedAt: azuraCurrentSong.playedAt,
        duration: azuraCurrentSong.duration,
        isRequest: azuraCurrentSong.isRequest,
        song: song);
    AzuraApiNowPlayingListeners azuraListeners = azuraNowPlaying.listeners;
    RadioListeners listeners = RadioListeners(
        current: azuraListeners.current,
        total: azuraListeners.total,
        unique: azuraListeners.unique);
    AzuraApiNowPlayingStation azuraStation = azuraNowPlaying.station;
    Station station = Station(
        id: azuraStation.id,
        name: azuraStation.name,
        description: azuraStation.description,
        listenUrl: azuraStation.listenUrl);
    return NowPlaying(
        song: song,
        currentSong: currentSong,
        station: station,
        listeners: listeners);
  }
}
