class Plant {
  final String id;
  final String name;
  final String subtitle;
  final double price;
  final String imageUrl;
  final String category; // Plants, Flowers, Cacti, etc.

  const Plant({
    required this.id,
    required this.name,
    required this.subtitle,
    required this.price,
    required this.imageUrl,
    required this.category,
  });
}
