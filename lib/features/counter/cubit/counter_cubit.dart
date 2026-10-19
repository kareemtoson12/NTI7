import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti7/features/counter/cubit/states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterIntialState(counter: 0));

  void increment() {
    emit(CounterIncreamentState(counter: state.counter + 1));
  }
}
