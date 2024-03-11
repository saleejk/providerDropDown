import 'package:flutter/material.dart';

class DropDown extends ChangeNotifier {
  String selectedValue = 'one';
  changeValue(value) {
    selectedValue = value;
    notifyListeners();
  }

  List colors = [Colors.red, Colors.green, Colors.blue];
  int index = 0;
  changeColor() {
    index = (index + 1) % colors.length;
    notifyListeners();
  }
}
