class albumsModel {
  final int? postId;
  final int id;

  final String? title;
  const albumsModel({
    required this.postId,
    required this.id,
    required this.title,
  });

  factory albumsModel.fromJson(Map<String, dynamic> myjsonResponce) {
    return albumsModel(
        postId: myjsonResponce['postId'],
        id: myjsonResponce['id'],
        title: myjsonResponce['title']);
  }
}
