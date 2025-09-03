import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/cart_item.dart';
import '../models/plant.dart';

class CartViewModel extends ChangeNotifier {
  final Map<String, CartItem> _lines = {};
  String? _deliveryNote;

  List<CartItem> get items => _lines.values.toList();
  int get totalQty => _lines.values.fold(0, (a, b) => a + b.qty);
  double get subtotal =>
      _lines.values.fold(0.0, (a, b) => a + (b.plant.price * b.qty));
  double get delivery => items.isEmpty ? 0 : 25.50;
  double get grandTotal => subtotal + delivery;
  String money(num v) => NumberFormat.simpleCurrency().format(v);
  String? get deliveryNote => _deliveryNote;

  void add(Plant p, {int qty = 1}) {
    final line = _lines[p.id];
    if (line == null) {
      _lines[p.id] = CartItem(plant: p, qty: qty);
    } else {
      line.qty += qty;
    }
    notifyListeners();
  }

  void remove(String id) {
    _lines.remove(id);
    notifyListeners();
  }

  void setQty(String id, int qty) {
    if (!_lines.containsKey(id)) return;
    if (qty <= 0) {
      _lines.remove(id);
    } else {
      _lines[id]!.qty = qty;
    }
    notifyListeners();
  }

  void clear() {
    _lines.clear();
    notifyListeners();
  }

  void setDeliveryNote(String? note) {
    _deliveryNote = note;
    notifyListeners();
  }
}
