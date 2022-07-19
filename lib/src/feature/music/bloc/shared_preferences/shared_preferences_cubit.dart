import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'shared_preferences_state.dart';

class SharedPreferencesCubit extends Cubit<SharedPreferencesState> {
  SharedPreferencesCubit() : super(SharedPreferencesCubitDartInitial());
}
