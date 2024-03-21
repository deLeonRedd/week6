import 'package:flutter/material.dart';
import 'package:week6/model/item.dart';

class ShoppingCart extends ChangeNotifier{
  List<Item> _products = [
    Item("Name1", 1, 2),
    Item("Name2", 3, 4),
  ];

  List<Item> get cart => _products;

  void removeItem(Item item){
    _products.remove(item);
    notifyListeners();
  }
}