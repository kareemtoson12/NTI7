abstract class CounterStates {
  final int counter;

  CounterStates({required this.counter});
}

class CounterIntialState extends CounterStates {
  CounterIntialState({required super.counter});
}

class CounterIncreamentState extends CounterStates {
  CounterIncreamentState({required super.counter});
}
