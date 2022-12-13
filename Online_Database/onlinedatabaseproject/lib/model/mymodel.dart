class MyModel {
  final int id;
  final String firstname;
  final String email;
  const MyModel({
    required this.id,
    required this.firstname,
    required this.email,
  });

  factory MyModel.fromJson(Map<String, dynamic> myjsonResponce) {
    return MyModel(
        id: myjsonResponce['id']!,
        firstname: myjsonResponce['firstname'],
        email: myjsonResponce['email']);
  }
}
