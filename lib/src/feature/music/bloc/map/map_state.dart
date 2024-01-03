// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'map_bloc.dart';

@immutable
class MapState {
  get listMarkers => [];
}

class MapInitial extends MapState {}

class PositionChanged extends MapState {

  Position position;
  PositionChanged({
    required this.position,
  });

}

class FetchChangeMarkers extends MapState {
  List<Map> listMarkers;
  FetchChangeMarkers({
    required this.listMarkers,
  });
}

class ErrorState extends MapState{
  final String error;

  ErrorState({required this.error});
}