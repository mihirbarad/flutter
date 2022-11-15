import 'package:flutter/material.dart';

class Option {
  Icon icon;
  String title;
  String subtitle;

  Option({required this.icon, required this.title, required this.subtitle});
}

final options = [
  Option(
    icon: Icon(Icons.person, size: 40.0),
    title: 'Profile',
    subtitle: 'check your profile ',
  ),
  Option(
    icon: Icon(Icons.info, size: 40.0),
    title: 'about us',
    subtitle: 'information ',
  ),
  Option(
    icon: Icon(Icons.phone, size: 40.0),
    title: 'contect',
    subtitle: 'contect me',
  ),
  Option(
    icon: Icon(Icons.logout_rounded, size: 40.0),
    title: 'logout',
    subtitle: 'logout ',
  ),
];
