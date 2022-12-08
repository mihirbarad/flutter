class todoModel {
  final int? userId;
  final int id;

  final String? title;
  bool? completed;
  todoModel(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  factory todoModel.fromJson(Map<String, dynamic> myjsonResponce) {
    return todoModel(
        userId: myjsonResponce['userId'],
        id: myjsonResponce['id'],
        completed: myjsonResponce['completed'],
        title: myjsonResponce['title']);
  }
}
