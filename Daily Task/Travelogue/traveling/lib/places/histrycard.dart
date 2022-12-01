import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:traveling/otherscreen/colors.dart';
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
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: WebView(
            initialUrl:
                'https://en.wikipedia.org/wiki/Manali,_Himachal_Pradesh#:~:text=It%20is%20situated%20in%20the,national%20capital%20of%20New%20Delhi.',
          ),
        ),
      ),
    );
  }
}
