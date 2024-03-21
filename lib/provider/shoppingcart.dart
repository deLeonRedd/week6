import 'package:flutter/material.dart';
import 'package:week6/model/item.dart';

class ShoppingCart extends ChangeNotifier{
  List<Item> _products = [];

  List<Item> get cart => _products;

  void removeItem(Item item){
    _products.remove(item);
    notifyListeners();
  }

  void addItem(Item item) {
    _products.add(item);
    notifyListeners();
  }

  void removeAll() {
    _products.clear();
    notifyListeners();
  }
}