import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  TextEditingController subjectController = TextEditingController();
  List<String> mysubjectlist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
              controller: subjectController,
              decoration: InputDecoration(
                  labelText: 'Subject', enabledBorder: OutlineInputBorder()),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                mysubjectlist.add(subjectController.text.toString());
                for (var i = 0; i < mysubjectlist.length; i++) {
                  print(mysubjectlist[i]);
                }
              },
              child: Text('click')),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: mysubjectlist.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(20),
                height: 120,
                width: double.infinity,
                child: Text(
                  mysubjectlist[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 38, color: Colors.amber),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
