import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:onlinedatabaseproject/model/album.dart';
import 'package:onlinedatabaseproject/todoapi.dart';

Future<List<albumsModel>> fetchdata() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

  if (response.statusCode == 200) {
    List jsonResponce = jsonDecode(response.body);
    return jsonResponce.map((data) => new albumsModel.fromJson(data)).toList();
  } else {
    throw Exception("Failed to Load album");
  }
}

class albumApi extends StatefulWidget {
  const albumApi({super.key});

  @override
  State<albumApi> createState() => _albumApiState();
}

class _albumApiState extends State<albumApi> {
  late Future<List<albumsModel>> myfutureList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myfutureList = fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Album Api"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => todoapi(),
                    ));
              },
              icon: Icon(Icons.navigate_next))
        ],
      ),
      body: Container(
        child: FutureBuilder<List<albumsModel>>(
          future: myfutureList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<albumsModel> mylist = snapshot.data!;

              return ListView.builder(
                  itemCount: mylist.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        print("-->>>${mylist[index].id}");
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              padding: EdgeInsets.all(5),
                              height: 30,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 183, 211, 233)),
                              child: Text(
                                  "(${mylist[index].id})Title:   ${mylist[index].title!}")),
                        ],
                      ),
                    );
                  });
            } else if (snapshot.hasError) {}
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
