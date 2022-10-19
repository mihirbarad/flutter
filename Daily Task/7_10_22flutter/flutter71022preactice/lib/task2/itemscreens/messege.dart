import 'package:flutter/material.dart';

class Messege extends StatefulWidget {
  const Messege({super.key});

  @override
  State<Messege> createState() => _MessegeState();
}

class _MessegeState extends State<Messege> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 12,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  height: MediaQuery.of(context).size.height / 10,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '${number++} meessege',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
