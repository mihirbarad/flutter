import 'package:budget_expence/expencescen.dart';
import 'package:budget_expence/income.dart';
import 'package:flutter/material.dart';

class Add_incomeandExpence extends StatefulWidget {
  const Add_incomeandExpence({super.key});

  @override
  State<Add_incomeandExpence> createState() => _Add_incomeandExpenceState();
}

class _Add_incomeandExpenceState extends State<Add_incomeandExpence> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  "+Income",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              Tab(
                child: Text(
                  " - Expence",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ), // TabBar
          title: const Text('Add Your Details'),
          backgroundColor: Color.fromARGB(248, 159, 129, 28),
        ), // AppBar
        body: const TabBarView(
          children: [
            income(),
            expenceScreen(),
          ],
        ), // TabBarView
      ), // Scaffold
    ); // DefaultTabController
  }
}
