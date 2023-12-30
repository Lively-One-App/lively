// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'map_bloc.dart';

@immutable
class MapState {}

class MapInitial extends MapState {}

class PositionChanged extends MapState {

  Position position;
  PositionChanged({
    required this.position,
  });

}
