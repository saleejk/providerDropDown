import 'package:flutter/material.dart';

class DropDown extends ChangeNotifier {
  String selectedValue = 'one';
  changeValue(value) {
    selectedValue = value;
    notifyListeners();
  }
}
