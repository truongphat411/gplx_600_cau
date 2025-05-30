import 'package:flutter/material.dart';

class ItemHome {
  ItemHome({
    required this.title,
    required this.icon,
    this.onTap,
    required this.color,
  });
  final String title;
  final Color color;
  final String icon;
  final VoidCallback? onTap;
}
