// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'run_string_bloc.dart';

@immutable
abstract class RunStringState {
  const RunStringState();
}

class RunStringInitial extends RunStringState {
  const RunStringInitial();
}

class RunStringUpdateState extends RunStringState {
  final String runString;
  const RunStringUpdateState({
    required this.runString,
  });
}

class RunStringDefaultState extends RunStringState {
  
  
}
