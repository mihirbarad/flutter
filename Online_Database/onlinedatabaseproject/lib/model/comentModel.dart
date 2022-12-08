class ComentModel {
  final int? postId;
  final int id;
  final String? name;
  final String body;
  final String? email;
  const ComentModel({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  factory ComentModel.fromJson(Map<String, dynamic> myjsonResponce) {
    return ComentModel(
        postId: myjsonResponce['postId'],
        id: myjsonResponce['id'],
        name: myjsonResponce['name'],
        email: myjsonResponce['email'],
        body: myjsonResponce['body']);
  }
}
