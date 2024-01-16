part of 'map_bloc.dart';

@immutable
class MapState {
  get listMarkers => [];
}

class MapInitial extends MapState {}

class PositionChanged extends MapState {
  final Position position;

  PositionChanged({
    required this.position,
  });
}

class FetchChangeMarkers extends MapState {
  final List<Map> listMarkers;

  FetchChangeMarkers({
    required this.listMarkers,
  });
}

class ErrorState extends MapState {
  final String error;

  ErrorState({
    required this.error,
  });
}

class OffSharedPositionState extends MapState {}

class OnSharedPositionState extends MapState {}
