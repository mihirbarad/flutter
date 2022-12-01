import 'package:bugettracker/add_expens.dart';
import 'package:bugettracker/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:page_transition/page_transition.dart';

class MyExpense extends StatefulWidget {
  var name;
  var number;

  MyExpense({
    super.key,
    @required this.name,
    @required this.number,
  });

  @override
  State<MyExpense> createState() => _MyExpenseState();
}

class _MyExpenseState extends State<MyExpense> {
  List<String> name = [];
  void doNothing(BuildContext context) {}
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color.fromARGB(255, 33, 149, 243),
            Color.fromARGB(255, 0, 0, 0),
          ],
        )),
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            Container(
                height: MediaQuery.of(context).size.height / 11,
                width: MediaQuery.of(context).size.width / 1.3,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color:
                          const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                      offset: const Offset(-6.0, -6.0),
                      blurRadius: 16.0,
                    ),
                    BoxShadow(
                      color:
                          const Color.fromARGB(255, 0, 0, 0).withOpacity(0.4),
                      offset: const Offset(6.0, 6.0),
                      blurRadius: 16.0,
                    ),
                  ],
                  color: const Color.fromARGB(255, 215, 218, 222),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Center(
                  child: Text("My transaction",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromARGB(255, 1, 54, 98))),
                )),
            Expanded(
                child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Slidable(
                      key: UniqueKey(),
                      endActionPane: ActionPane(
                        dismissible: DismissiblePane(onDismissed: () {
                          // we can able to perform to some action here
                        }),
                        motion: const DrawerMotion(),
                        children: [
                          SlidableAction(
                            borderRadius: BorderRadius.circular(30),
                            autoClose: true,
                            flex: 1,
                            spacing: 2,
                            onPressed: (value) {
                              print("_-____--__-_Deleted");
                              setState(() {
                                widget.name.removeAt(index);
                              });
                            },
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'Delete',
                          ),
                          SlidableAction(
                            borderRadius: BorderRadius.circular(30),
                            spacing: 2,
                            autoClose: true,
                            flex: 1,
                            onPressed: (value) {
                              print("_-____--__-edits");
                              setState(() {
                                widget.name.removeAt(index);
                              });
                            },
                            backgroundColor: Colors.blueAccent,
                            foregroundColor: Colors.white,
                            icon: Icons.edit,
                            label: 'Edit',
                          ),
                        ],
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        decoration: new BoxDecoration(
                            color: const Color.fromARGB(255, 204, 204, 205),
                            borderRadius: BorderRadius.circular(30)),
                        child: ListTile(
                          tileColor: isSelected
                              ? const Color.fromARGB(255, 162, 16, 9)
                              : null,
                          hoverColor: Colors.red,
                          leading: CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 31, 0, 80),
                            child: Text(
                              '${index + 1}',
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                          title: Text('${widget.name}'),
                          subtitle: Text('${widget.number}'),
                        ),
                      )),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
