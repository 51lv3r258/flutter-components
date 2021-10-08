import 'package:flutter/material.dart'
    show Icon, Icons, Color, Colors, IconData;

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'donut_large': Icons.donut_large,
  'input': Icons.input_outlined,
  'tune': Icons.tune_outlined,
};

Icon getIcon(String iconName, [Color? color]) {
  return Icon(
    _icons[iconName],
    color: color ?? Colors.blue,
  );
}
