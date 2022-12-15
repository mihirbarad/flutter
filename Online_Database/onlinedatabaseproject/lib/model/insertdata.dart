import 'dart:convert';

Datamodel dataModelFromJson(String str) => Datamodel.fromJson(json.decode(str));
String dataModelToJson(Datamodel data) => json.encode(data.toJson());

class Datamodel {
  final String? name;
  final String? email;
  final int? id;

  const Datamodel({
    required this.name,
    required this.id,
    required this.email,
  });

  factory Datamodel.fromJson(Map<String, dynamic> myjsonResponce) {
    return Datamodel(
        email: myjsonResponce['email'],
        id: myjsonResponce['id'],
        name: myjsonResponce['name']);
  }

  Map<String, dynamic> toJson() => {"id": id, "name": name, "email": email};
}
