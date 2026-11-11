import 'package:dio/dio.dart';
import 'package:nti7/core/models/todo_model.dart';

class ApisService {
  final Dio _dio = Dio(
    BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"),
  );

  Future<List<TodoModel>> getTodos() async {
    List<TodoModel> todos = [];
    try {
      final result = await _dio.get("todos");
      for (var i in result.data) {
        todos.add(TodoModel.fromJson(i));
      }
      return todos;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
