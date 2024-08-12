import 'package:flutter/material.dart';

class ItemHome {
  ItemHome({
    required this.title,
    required this.icon,
    required this.navigationPath,
    required this.color,
  });
  final String title;
  final Color color;
  final String icon;
  final String navigationPath;
}
