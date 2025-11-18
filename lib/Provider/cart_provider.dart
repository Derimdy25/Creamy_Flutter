import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _cart = [];

  List<Map<String, dynamic>> get cart => _cart;

  void addToCart(Map<String, dynamic> item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(int index) {
    _cart.removeAt(index);
    notifyListeners();
  }

  double calculateTotalPrice() {
    return _cart.fold(
      0.0,
      (sum, item) => sum + (item['price'] * item['quantity']),
    );
  }
}
