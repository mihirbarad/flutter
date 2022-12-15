import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:onlinedatabaseproject/imageApi.dart';
import 'package:onlinedatabaseproject/model/todomodel.dart';

Future<List<todoModel>> fetchdata() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

  if (response.statusCode == 200) {
    List jsonResponce = jsonDecode(response.body);
    return jsonResponce.map((data) => new todoModel.fromJson(data)).toList();
  } else {
    throw Exception("Failed to Load album");
  }
}

class todoapi extends StatefulWidget {
  const todoapi({super.key});

  @override
  State<todoapi> createState() => _todoapiState();
}

class _todoapiState extends State<todoapi> {
  late Future<List<todoModel>> myfutureList;

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
        title: Text(" Todo Api"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FetchPictureListView(),
                    ));
              },
              icon: Icon(Icons.navigate_next)),
        ],
      ),
      body: Container(
        child: FutureBuilder<List<todoModel>>(
          future: myfutureList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<todoModel> mylist = snapshot.data!;

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
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 183, 211, 233)),
                              child: Text(
                                  "(${mylist[index].id})Title:   ${mylist[index].title!}")),
                          Container(
                              padding: EdgeInsets.all(5),
                              height: 30,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 183, 211, 233)),
                              child: Text(
                                "ANS:${mylist[index].completed.toString()}",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 44, 6, 100)),
                              )),
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
