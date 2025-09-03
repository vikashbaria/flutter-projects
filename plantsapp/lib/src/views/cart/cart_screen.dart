import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/cart_viewmodel.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartViewModel>();

    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: Padding(
        // padding: const EdgeBoxInsets.all(16),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: cart.items.length,
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final line = cart.items[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(12),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          line.plant.imageUrl,
                          width: 54,
                          height: 54,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        line.plant.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      ),
                      subtitle: Text(
                        '\$${line.plant.price.toStringAsFixed(2)}',
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () =>
                                cart.setQty(line.plant.id, line.qty - 1),
                            icon: const Icon(Icons.remove_circle_outline),
                          ),
                          Text(
                            line.qty.toString(),
                            style: const TextStyle(fontWeight: FontWeight.w700),
                          ),
                          IconButton(
                            onPressed: () =>
                                cart.setQty(line.plant.id, line.qty + 1),
                            icon: const Icon(Icons.add_circle_outline),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            _summary(context, cart),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: cart.items.isEmpty
                    ? null
                    : () {
                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: const Text('Payment'),
                            content: Text(
                              'Grand Total: ${cart.money(cart.grandTotal)}',
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Close'),
                              ),
                            ],
                          ),
                        );
                      },
                child: const Text('Make Payment'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _summary(BuildContext context, CartViewModel cart) {
    TextStyle label = TextStyle(color: Colors.black.withOpacity(.6));
    TextStyle value = const TextStyle(fontWeight: FontWeight.w700);
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _row('Delivery Amount', cart.money(cart.delivery), label, value),
          const SizedBox(height: 8),
          _row('Total Amount', cart.money(cart.grandTotal), label, value),
        ],
      ),
    );
  }

  Widget _row(String l, String v, TextStyle ls, TextStyle vs) => Row(
    children: [
      Text(l, style: ls),
      const Spacer(),
      Text(v, style: vs),
    ],
  );
}
