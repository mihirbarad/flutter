class imageModel {
  final int? albumId;
  final int id;
  final String title;
  final String thumbnailUrl;
  final String url;

  const imageModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.url,
  });

  factory imageModel.fromJson(Map<String, dynamic> myjsonResponce) {
    return imageModel(
        albumId: myjsonResponce['albumId'],
        id: myjsonResponce['id'],
        url: myjsonResponce['url'],
        thumbnailUrl: myjsonResponce['thumbnailUrl'],
        title: myjsonResponce['title']);
  }
}
