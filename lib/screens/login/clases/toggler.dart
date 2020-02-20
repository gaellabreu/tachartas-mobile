import 'package:flutter/foundation.dart';

class Switcher extends ChangeNotifier {
  bool _items = false;

  bool get items => _items;
  void toggle() {
    _items = !_items;
    notifyListeners();
  }
}