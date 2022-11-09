import 'package:flutter/material.dart';
import 'package:flutter_7_11/user/user.dart';

class Mymaindb extends StatefulWidget {
  const Mymaindb({super.key});

  @override
  State<Mymaindb> createState() => _MymaindbState();
}

class _MymaindbState extends State<Mymaindb> {
  late List<User> userlist = <User>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My database"),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text("My name"),
              subtitle: Text("Contact"),
              trailing: Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 5,
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print("edits complete");
                        },
                        child: Icon(Icons.edit),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print("delete complete");
                        },
                        child: Icon(Icons.delete),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
        foregroundColor: Colors.teal,
      ),
    );
  }
}
