import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:onlinedatabaseproject/commentApi.dart';
import 'package:onlinedatabaseproject/model/mymodel.dart';

Future<List<MyModel>> fetchdata() async {
  final response = await http.get(
      Uri.parse('https://digitalsocity.000webhostapp.com/add_database.php'));

  if (response.statusCode == 200) {
    List jsonResponce = jsonDecode(response.body);
    return jsonResponce.map((data) => new MyModel.fromJson(data)).toList();
  } else {
    throw Exception("Failed to Load album");
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late Future<List<MyModel>> myfutureList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myfutureList = fetchdata();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Fetch with api"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CommentApi(),
                    ));
              },
              icon: Icon(Icons.navigate_next)),
        ],
      ),
      body: Container(
        child: FutureBuilder<List<MyModel>>(
          future: myfutureList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<MyModel> mylist = snapshot.data!;

              return ListView.builder(
                  itemCount: mylist.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          Text(mylist[index].firstname),
                          Text(mylist[index].id.toString()),
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
