import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class listview extends StatefulWidget {
  listview({Key? key}) : super(key: key);

  @override
  State<listview> createState() => _listviewState();
}

class _listviewState extends State<listview> {
  List<String> title = [
    'pizz',
    'pasta',
    'meggi',
  ];
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    title.add((title.length + 1).toString());
    if (mounted) setState(() {});
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        header: WaterDropHeader(),
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: ListView.builder(
          itemBuilder: (c, i) => Card(child: Center(child: Text(title[i]))),
          itemExtent: 100.0,
          itemCount: title.length,
        ),
      ),
    );
  }
}
