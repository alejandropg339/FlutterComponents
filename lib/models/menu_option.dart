import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart' show IconData;

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOption({
    required this.route,
    required this.icon,
    required this.name,
    required this.screen
  });
}
