import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:http/http.dart' as http;

class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> idArray = [];
  List<String> titileArray = [];
  List<String> discriptionArray = [];

  late Future myfuture;
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myfuture = getInfo();
  }

  Future<void> getInfo() async {
    try {
      final response = await http.get(Uri.parse(
          'https://api.musixmatch.com/ws/1.1/chart.tracks.get?apikey=2d782bc7a52a41ba2fc1ef05b9cf40d7'));
      if (response.statusCode == 200) {
        Map data = json.decode(response.body);
        List data1 = data["body"];

        data1.map((e) {
          idArray.add(e['commontrack_id']);
          titileArray.add(e['artist_name']);
          discriptionArray.add(e['track_share_url']);
        }).toList();

        return null;
      } else {
        Fluttertoast.showToast(msg: "Status Code");
      }
    } on SocketException catch (e) {
      Fluttertoast.showToast(msg: "Failed to load ${e}");
      print("Failed to load ${e}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: FutureBuilder(
          future: myfuture,
          builder: (context, snapshot) => snapshot.connectionState ==
                  ConnectionState.waiting
              ? CircularProgressIndicator()
              : ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: idArray.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 15,
                          vertical: MediaQuery.of(context).size.height / 80),
                      decoration: BoxDecoration(
                        color: Color(0xff128C7E),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 20,
                              top: MediaQuery.of(context).size.height / 40,
                              bottom: MediaQuery.of(context).size.height / 40),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 4,
                                      child: Text(
                                        " ${titileArray[index]}",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                20),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        " ${discriptionArray[index]}",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                26),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  })),
    ));
  }
}
