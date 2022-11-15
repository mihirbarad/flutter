import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:traveler/screen/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:io';

import 'package:webview_flutter/webview_flutter.dart';

class history extends StatefulWidget {
  const history({super.key});

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History Of Bhavnagar"),
        backgroundColor: ColorConstants.kPrimaryColor,
      ),
      body: Container(
        child: WebView(
          initialUrl: 'https://en.wikipedia.org/wiki/Bhavnagar',
        ),
      ),
    );
  }
}
