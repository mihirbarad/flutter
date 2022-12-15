import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FetchPictureListView extends StatefulWidget {
  FetchPictureListView({Key? key}) : super(key: key);

  @override
  State<FetchPictureListView> createState() => _FetchPictureListViewState();
}

// main logic for retrieve data from api
Future<List<PictureModel>> fetchApiData() async {
  final response =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
  if (response.statusCode == 200) {
    List list = jsonDecode(response.body);
    List<PictureModel> cartList =
        list.map((e) => PictureModel.fromJson(e)).toList();

    return cartList;
  } else {
    throw Exception("Failed to load data");
  }
}

// model class
class PictureModel {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  PictureModel(
      {this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  PictureModel.fromJson(Map<String, dynamic> json) {
    albumId = json['albumId'];
    id = json['id'];
    title = json['title'];
    url = json['url'];
    thumbnailUrl = json['thumbnailUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['albumId'] = this.albumId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['url'] = this.url;
    data['thumbnailUrl'] = this.thumbnailUrl;
    return data;
  }
}

class _FetchPictureListViewState extends State<FetchPictureListView> {
  late Future<List<PictureModel>> futureData;

  @override
  void initState() {
    super.initState();
    futureData = fetchApiData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API - IMAGE FETCH"),
      ),
      body: Container(
        child: FutureBuilder<List<PictureModel>>(
          future: fetchApiData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  PictureModel pictureModel = snapshot.data![index];
                  return Container(
                    width: 180,
                    height: 139,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(pictureModel.url!),
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
                itemCount: snapshot.data!.length,
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
