import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti7/features/todo/cubit/states.dart';

class TodoCubit extends Cubit<TodoStates> {
  TodoCubit() : super(TodoIntialState(todos: []));

  void addNewtodo(String newTodo) {
    List<String> updatedListOfTodos = List.from(state.todos);
    updatedListOfTodos.add(newTodo);
    emit(TodoAddState(todos: updatedListOfTodos));
  }

  void removeTodo(int index) {
    List<String> updatedListOfTodos = List.from(state.todos);
    updatedListOfTodos.removeAt(index);
    emit(TodoRemoveState(todos: updatedListOfTodos));
  }
}
