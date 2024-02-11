part of 'run_string_bloc.dart';

@immutable
class RunStringEvent {
  const RunStringEvent();
}

class RunStringUpdateEvent extends RunStringEvent {
  final String runString;
  const RunStringUpdateEvent(
    this.runString,
  );
}
