import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:onlinedatabaseproject/albumApi.dart';
import 'package:onlinedatabaseproject/model/comentModel.dart';
import 'package:http/http.dart' as http;

Future<List<ComentModel>> fetchdata() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));

  if (response.statusCode == 200) {
    List jsonResponce = jsonDecode(response.body);
    return jsonResponce.map((data) => new ComentModel.fromJson(data)).toList();
  } else {
    throw Exception("Failed to Load album");
  }
}

class CommentApi extends StatefulWidget {
  const CommentApi({super.key});

  @override
  State<CommentApi> createState() => _CommentApiState();
}

class _CommentApiState extends State<CommentApi> {
  late Future<List<ComentModel>> myfutureList;

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
        title: Text("Comment Api"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => albumApi(),
                    ));
              },
              icon: Icon(Icons.navigate_next))
        ],
      ),
      body: Container(
        child: FutureBuilder<List<ComentModel>>(
          future: myfutureList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ComentModel> mylist = snapshot.data!;

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
                                  "(${mylist[index].id})Name:   ${mylist[index].name!}")),
                          Container(
                              padding: EdgeInsets.all(5),
                              height: 30,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 183, 211, 233)),
                              child: Text("Email:   ${mylist[index].email!}")),
                          Container(
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 183, 211, 233)),
                              child: Text("body:   ${mylist[index].body}")),
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
