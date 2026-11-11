import 'package:nti7/core/apis_service.dart';

void main() async {
  ApisService a = ApisService();
  final todos = await a.getTodos();
  print(todos[0].title);
}
