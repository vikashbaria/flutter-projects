import 'package:flutter/material.dart';
import '../models/plant.dart';
import '../services/plant_service.dart';

class CatalogViewModel extends ChangeNotifier {
  final _service = PlantService();
  final List<Plant> _plants = [];
  String _activeCategory = 'Plants';
  bool _loading = false;

  List<Plant> get plants => _plants
      .where((e) => _activeCategory == 'All' || e.category == _activeCategory)
      .toList();
  bool get loading => _loading;
  String get activeCategory => _activeCategory;
  List<String> get categories => const ['All', 'Plants', 'Flowers', 'Cacti'];

  Future<void> load() async {
    _loading = true;
    notifyListeners();
    final data = await _service.fetchPlants();
    _plants
      ..clear()
      ..addAll(data);
    _loading = false;
    notifyListeners();
  }

  void setCategory(String cat) {
    _activeCategory = cat;
    notifyListeners();
  }
}
