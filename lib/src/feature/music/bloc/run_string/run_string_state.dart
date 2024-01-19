// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'run_string_bloc.dart';

@immutable
class RunStringState {}

class RunStringInitial extends RunStringState {}

class RunStringUpdateState extends RunStringState {
  
  String runString;
  RunStringUpdateState({
    required this.runString,
  });

}

class RunStringDefaultState extends RunStringState {
  
  
}
