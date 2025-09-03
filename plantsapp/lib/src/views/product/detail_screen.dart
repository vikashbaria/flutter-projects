import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/plant.dart';
import '../../viewmodels/cart_viewmodel.dart';
import '../../widgets/qty_stepper.dart';

class DetailScreen extends StatefulWidget {
  final Plant plant;
  const DetailScreen({super.key, required this.plant});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int qty = 1;

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.plant.name,
          style: const TextStyle(fontWeight: FontWeight.w800),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Image.network(
                  widget.plant.imageUrl,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              widget.plant.subtitle,
              style: TextStyle(color: Colors.black.withOpacity(.6)),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(
                  '\$${widget.plant.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Spacer(),
                QtyStepper(
                  value: qty,
                  onInc: () => setState(() => qty++),
                  onDec: () => setState(() => qty = qty > 1 ? qty - 1 : 1),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  cart.add(widget.plant, qty: qty);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Added to cart')),
                  );
                },
                child: const Text('Add to Cart'),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
