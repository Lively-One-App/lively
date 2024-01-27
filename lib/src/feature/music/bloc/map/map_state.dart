// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'map_bloc.dart';

class MapState {
  final bool isShareMyPosition;
  final List<Map> listMarkers;
  const MapState({required this.isShareMyPosition, required this.listMarkers,});
}

class MapInitial extends MapState {
  const MapInitial({List<Map> listMarkers = const [],  bool isShared = false})
      : super(isShareMyPosition: isShared, listMarkers: listMarkers);
}

class PositionChanged extends MapState {
  final Position position;
  const PositionChanged(
      {required this.position,
      required bool isShareMyPosition,
      required List<Map> listMarkers,})
      : super(isShareMyPosition: isShareMyPosition, listMarkers: listMarkers, );
}

class FetchChangeMarkers extends MapState {
  final List<Map> listMarkers;
  const FetchChangeMarkers({
    required this.listMarkers,
    required bool isShareMyPosition,
  }) : super(isShareMyPosition: isShareMyPosition, listMarkers: listMarkers, );
}

class ErrorState extends MapState {
  final String error;

  const ErrorState(
      {required this.error,
      required bool isShareMyPosition,
      required List<Map> listMarkers,})
      : super(isShareMyPosition: isShareMyPosition, listMarkers: listMarkers,);
}

class OffSharedPositionState extends MapState {
  const OffSharedPositionState({required List<Map> listMarkers,})
      : super(isShareMyPosition: false, listMarkers: listMarkers,);
}

class OnSharedPositionState extends MapState {
  const OnSharedPositionState(
      {required bool isShareMyPosition, required List<Map> listMarkers,})
      : super(isShareMyPosition: isShareMyPosition, listMarkers: listMarkers,);
}
