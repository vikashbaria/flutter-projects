import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/cart_viewmodel.dart';
import '../../viewmodels/catalog_viewmodel.dart';
import '../../viewmodels/theme_viewmodel.dart';
import '../../widgets/app_chip.dart';
import '../../widgets/plant_card.dart';
import '../cart/cart_screen.dart';
import '../product/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeVM = context.watch<ThemeViewModel>();
    final catalog = context.watch<CatalogViewModel>();
    final cart = context.watch<CartViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Let's Make our lives Greener",
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        actions: [
          Row(
            children: [
              const Icon(Icons.light_mode_rounded),
              Switch(value: themeVM.isDark, onChanged: themeVM.toggle),
            ],
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              // Categories chips
              SizedBox(
                height: 46,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, i) {
                    final label = catalog.categories[i];
                    return AppChip(
                      selected: label == catalog.activeCategory,
                      label: label,
                      onTap: () => catalog.setCategory(label),
                    );
                  },
                  separatorBuilder: (_, __) => const SizedBox(width: 10),
                  itemCount: catalog.categories.length,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: catalog.loading
                    ? const Center(child: CircularProgressIndicator())
                    : GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 16,
                              crossAxisSpacing: 16,
                              childAspectRatio: .72,
                            ),
                        itemCount: catalog.plants.length,
                        itemBuilder: (context, index) {
                          final p = catalog.plants[index];
                          return PlantCard(
                            plant: p,
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => DetailScreen(plant: p),
                              ),
                            ),
                            onAdd: () => cart.add(p),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const CartScreen()),
        ),
        label: Text(cart.totalQty.toString()),
        icon: const Icon(Icons.shopping_cart_rounded),
      ),
    );
  }
}
