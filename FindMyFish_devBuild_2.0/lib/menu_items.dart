//Sub-class for each of the menu items within the menu bar

import 'package:flutter/material.dart';
import 'package:untitled/menu_item.dart';

class MenuItems {
  static const List<MenuItem> items = [
    itemESOTW,
    itemReportViolation,
  ];

  static const itemESOTW = MenuItem(
    text: "ESOTW",
  );

  static const itemReportViolation = MenuItem(
    text: "Report",
  );
}