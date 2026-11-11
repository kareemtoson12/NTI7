class TodoModel {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  TodoModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });
  //fromJson
  factory TodoModel.fromJson(Map<String, dynamic> json) {
    return TodoModel(
      completed: json["completed"],
      id: json['id'],
      title: json['title'],
      userId: json['userId'],
    );
  }
}

//interceptors 