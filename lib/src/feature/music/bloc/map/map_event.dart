part of 'map_bloc.dart';

@immutable
abstract class MapEvent {
  const MapEvent();
}

class MapInitialEvent extends MapEvent {
  const MapInitialEvent();
}
class OffSharedPositionEvent extends MapEvent{
  const OffSharedPositionEvent();
}

class GetLastKnownPositionEvent extends MapEvent{
  const GetLastKnownPositionEvent();
}

class OnSharedPositionEvent extends MapEvent{
  const OnSharedPositionEvent();
}

class ChangeMarkersEvent extends MapEvent {
  final List<Map> listMarkers;
  const ChangeMarkersEvent({required this.listMarkers});
}

class SharePositionEvent extends MapEvent {
  final Position position;
  const SharePositionEvent({required this.position});
}

