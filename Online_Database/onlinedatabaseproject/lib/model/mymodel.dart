class MyModel {
  final int? userid;
  final int id;
  final String title;
  final String body;
  const MyModel({
    required this.userid,
    required this.id,
    required this.title,
    required this.body,
  });

  factory MyModel.fromJson(Map<String, dynamic> myjsonResponce) {
    return MyModel(
        userid: myjsonResponce['userid'],
        id: myjsonResponce['id'],
        title: myjsonResponce['title'],
        body: myjsonResponce['body']);
  }
}
