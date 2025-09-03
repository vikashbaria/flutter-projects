import '../models/plant.dart';

/// In real app this will call API. For demo we provide static data.
class PlantService {
  Future<List<Plant>> fetchPlants() async {
    await Future.delayed(const Duration(milliseconds: 400));
    return const [
      Plant(
        id: 'p1',
        name: 'The Potted Head',
        subtitle: 'Perfect for beginners',
        price: 59.0,
        imageUrl:
            'https://images.unsplash.com/photo-1501004318641-b39e6451bec6?w=800',
        category: 'Plants',
      ),
      Plant(
        id: 'p2',
        name: 'Ledger Block',
        subtitle: 'Easy indoor buddy',
        price: 89.0,
        imageUrl:
            'https://images.unsplash.com/photo-1501004318641-b39e6451bec6?w=801',
        category: 'Plants',
      ),
      Plant(
        id: 'p3',
        name: 'The Friendly Fern',
        subtitle: 'Low maintenance',
        price: 110.0,
        imageUrl:
            'https://images.unsplash.com/photo-1459411552884-841db9b3cc2a?w=802',
        category: 'Plants',
      ),
      Plant(
        id: 'p4',
        name: 'Mini Cacti',
        subtitle: 'Cute & hardy',
        price: 25.0,
        imageUrl:
            'https://images.unsplash.com/photo-1501004318641-b39e6451bec6?w=803',
        category: 'Cacti',
      ),
    ];
  }
}
