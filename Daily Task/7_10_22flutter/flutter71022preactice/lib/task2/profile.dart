import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  String? name;

  String? number;
  profile({Key? key, @required this.name, @required this.number})
      : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.network(
            'https://thumbs.dreamstime.com/b/website-under-construction-page-work-progress-website-under-construction-page-work-progress-man-repare-home-page-125249218.jpg'));
  }
}
