import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class q6 extends StatefulWidget {
  const q6({super.key});

  @override
  State<q6> createState() => _q6State();
}

class _q6State extends State<q6> {
  var msg;
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("q6"),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height / 1,
          child: Column(
            children: [
              SfDateRangePicker(
                onSelectionChanged: _onSelectionChanged,
                onSubmit: (p0) {
                  msg = _onSelectionChanged;
                },
                selectionMode: DateRangePickerSelectionMode.single,
              ),
            ],
          ),
        ));
  }
}
