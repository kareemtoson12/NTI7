abstract class TodoStates {
  final List<String> todos;

  TodoStates({required this.todos});
}

class TodoIntialState extends TodoStates {
  TodoIntialState({required super.todos});
}

class TodoAddState extends TodoStates {
  TodoAddState({required super.todos});
}

class TodoRemoveState extends TodoStates {
  TodoRemoveState({required super.todos});
}
