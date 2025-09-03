import 'plant.dart';

class CartItem {
  final Plant plant;
  int qty;
  CartItem({required this.plant, this.qty = 1});
  double get lineTotal => plant.price * qty;
}
