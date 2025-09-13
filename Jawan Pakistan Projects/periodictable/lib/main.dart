import 'package:flutter/material.dart';

void main() => runApp(const PeriodicTableApp());

class PeriodicTableApp extends StatelessWidget {
  const PeriodicTableApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Periodic Table',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PeriodicTablePage(),
    );
  }
}

class ElementData {
  final int number;
  final String symbol;
  final String name;
  final String atomicMass;
  final int period;
  final int group;
  final String category; // optional, for coloring

  ElementData({
    required this.number,
    required this.symbol,
    required this.name,
    required this.atomicMass,
    required this.period,
    required this.group,
    this.category = 'other',
  });
}

class PeriodicTablePage extends StatefulWidget {
  const PeriodicTablePage({super.key});

  @override
  State<PeriodicTablePage> createState() => _PeriodicTablePageState();
}

class _PeriodicTablePageState extends State<PeriodicTablePage> {
  // 7 periods (rows) and 18 groups (columns)
  static const int periods = 7;
  static const int groups = 18;

  // A map keyed by period -> group -> ElementData
  // I populated common elements through around krypton for demo.
  // Extend this map to include all elements. Use period and group positions.
  final Map<int, Map<int, ElementData>> elementsMap = {
    1: {
      1: ElementData(
        number: 1,
        symbol: 'H',
        name: 'Hydrogen',
        atomicMass: '1.008',
        period: 1,
        group: 1,
        category: 'nonmetal',
      ),
      18: ElementData(
        number: 2,
        symbol: 'He',
        name: 'Helium',
        atomicMass: '4.0026',
        period: 1,
        group: 18,
        category: 'noble gas',
      ),
    },
    2: {
      1: ElementData(
        number: 3,
        symbol: 'Li',
        name: 'Lithium',
        atomicMass: '6.94',
        period: 2,
        group: 1,
        category: 'alkali metal',
      ),
      2: ElementData(
        number: 4,
        symbol: 'Be',
        name: 'Beryllium',
        atomicMass: '9.0122',
        period: 2,
        group: 2,
        category: 'alkaline earth',
      ),
      13: ElementData(
        number: 5,
        symbol: 'B',
        name: 'Boron',
        atomicMass: '10.81',
        period: 2,
        group: 13,
        category: 'metalloid',
      ),
      14: ElementData(
        number: 6,
        symbol: 'C',
        name: 'Carbon',
        atomicMass: '12.011',
        period: 2,
        group: 14,
        category: 'nonmetal',
      ),
      15: ElementData(
        number: 7,
        symbol: 'N',
        name: 'Nitrogen',
        atomicMass: '14.007',
        period: 2,
        group: 15,
        category: 'nonmetal',
      ),
      16: ElementData(
        number: 8,
        symbol: 'O',
        name: 'Oxygen',
        atomicMass: '15.999',
        period: 2,
        group: 16,
        category: 'nonmetal',
      ),
      17: ElementData(
        number: 9,
        symbol: 'F',
        name: 'Fluorine',
        atomicMass: '18.998',
        period: 2,
        group: 17,
        category: 'halogen',
      ),
      18: ElementData(
        number: 10,
        symbol: 'Ne',
        name: 'Neon',
        atomicMass: '20.180',
        period: 2,
        group: 18,
        category: 'noble gas',
      ),
    },
    3: {
      1: ElementData(
        number: 11,
        symbol: 'Na',
        name: 'Sodium',
        atomicMass: '22.990',
        period: 3,
        group: 1,
        category: 'alkali metal',
      ),
      2: ElementData(
        number: 12,
        symbol: 'Mg',
        name: 'Magnesium',
        atomicMass: '24.305',
        period: 3,
        group: 2,
        category: 'alkaline earth',
      ),
      13: ElementData(
        number: 13,
        symbol: 'Al',
        name: 'Aluminium',
        atomicMass: '26.982',
        period: 3,
        group: 13,
        category: 'post-transition',
      ),
      14: ElementData(
        number: 14,
        symbol: 'Si',
        name: 'Silicon',
        atomicMass: '28.085',
        period: 3,
        group: 14,
        category: 'metalloid',
      ),
      15: ElementData(
        number: 15,
        symbol: 'P',
        name: 'Phosphorus',
        atomicMass: '30.974',
        period: 3,
        group: 15,
        category: 'nonmetal',
      ),
      16: ElementData(
        number: 16,
        symbol: 'S',
        name: 'Sulfur',
        atomicMass: '32.06',
        period: 3,
        group: 16,
        category: 'nonmetal',
      ),
      17: ElementData(
        number: 17,
        symbol: 'Cl',
        name: 'Chlorine',
        atomicMass: '35.45',
        period: 3,
        group: 17,
        category: 'halogen',
      ),
      18: ElementData(
        number: 18,
        symbol: 'Ar',
        name: 'Argon',
        atomicMass: '39.948',
        period: 3,
        group: 18,
        category: 'noble gas',
      ),
    },
    4: {
      1: ElementData(
        number: 19,
        symbol: 'K',
        name: 'Potassium',
        atomicMass: '39.098',
        period: 4,
        group: 1,
        category: 'alkali metal',
      ),
      2: ElementData(
        number: 20,
        symbol: 'Ca',
        name: 'Calcium',
        atomicMass: '40.078',
        period: 4,
        group: 2,
        category: 'alkaline earth',
      ),
      3: ElementData(
        number: 21,
        symbol: 'Sc',
        name: 'Scandium',
        atomicMass: '44.956',
        period: 4,
        group: 3,
        category: 'transition metal',
      ),
      4: ElementData(
        number: 22,
        symbol: 'Ti',
        name: 'Titanium',
        atomicMass: '47.867',
        period: 4,
        group: 4,
        category: 'transition metal',
      ),
      5: ElementData(
        number: 23,
        symbol: 'V',
        name: 'Vanadium',
        atomicMass: '50.942',
        period: 4,
        group: 5,
        category: 'transition metal',
      ),
      6: ElementData(
        number: 24,
        symbol: 'Cr',
        name: 'Chromium',
        atomicMass: '51.996',
        period: 4,
        group: 6,
        category: 'transition metal',
      ),
      7: ElementData(
        number: 25,
        symbol: 'Mn',
        name: 'Manganese',
        atomicMass: '54.938',
        period: 4,
        group: 7,
        category: 'transition metal',
      ),
      8: ElementData(
        number: 26,
        symbol: 'Fe',
        name: 'Iron',
        atomicMass: '55.845',
        period: 4,
        group: 8,
        category: 'transition metal',
      ),
      9: ElementData(
        number: 27,
        symbol: 'Co',
        name: 'Cobalt',
        atomicMass: '58.933',
        period: 4,
        group: 9,
        category: 'transition metal',
      ),
      10: ElementData(
        number: 28,
        symbol: 'Ni',
        name: 'Nickel',
        atomicMass: '58.693',
        period: 4,
        group: 10,
        category: 'transition metal',
      ),
      11: ElementData(
        number: 29,
        symbol: 'Cu',
        name: 'Copper',
        atomicMass: '63.546',
        period: 4,
        group: 11,
        category: 'transition metal',
      ),
      12: ElementData(
        number: 30,
        symbol: 'Zn',
        name: 'Zinc',
        atomicMass: '65.38',
        period: 4,
        group: 12,
        category: 'transition metal',
      ),
      13: ElementData(
        number: 31,
        symbol: 'Ga',
        name: 'Gallium',
        atomicMass: '69.723',
        period: 4,
        group: 13,
        category: 'post-transition',
      ),
      14: ElementData(
        number: 32,
        symbol: 'Ge',
        name: 'Germanium',
        atomicMass: '72.630',
        period: 4,
        group: 14,
        category: 'metalloid',
      ),
      15: ElementData(
        number: 33,
        symbol: 'As',
        name: 'Arsenic',
        atomicMass: '74.922',
        period: 4,
        group: 15,
        category: 'metalloid',
      ),
      16: ElementData(
        number: 34,
        symbol: 'Se',
        name: 'Selenium',
        atomicMass: '78.971',
        period: 4,
        group: 16,
        category: 'nonmetal',
      ),
      17: ElementData(
        number: 35,
        symbol: 'Br',
        name: 'Bromine',
        atomicMass: '79.904',
        period: 4,
        group: 17,
        category: 'halogen',
      ),
      18: ElementData(
        number: 36,
        symbol: 'Kr',
        name: 'Krypton',
        atomicMass: '83.798',
        period: 4,
        group: 18,
        category: 'noble gas',
      ),
    },
    // Period 5+ add as needed...
    5: {
      1: ElementData(
        number: 37,
        symbol: 'Rb',
        name: 'Rubidium',
        atomicMass: '85.468',
        period: 5,
        group: 1,
        category: 'alkali metal',
      ),
      2: ElementData(
        number: 38,
        symbol: 'Sr',
        name: 'Strontium',
        atomicMass: '87.62',
        period: 5,
        group: 2,
        category: 'alkaline earth',
      ),
      // ... continue filling groups 3..18 for period 5
    },
    6: {
      1: ElementData(
        number: 55,
        symbol: 'Cs',
        name: 'Caesium',
        atomicMass: '132.91',
        period: 6,
        group: 1,
        category: 'alkali metal',
      ),
      2: ElementData(
        number: 56,
        symbol: 'Ba',
        name: 'Barium',
        atomicMass: '137.33',
        period: 6,
        group: 2,
        category: 'alkaline earth',
      ),
    },
    7: {
      1: ElementData(
        number: 87,
        symbol: 'Fr',
        name: 'Francium',
        atomicMass: '(223)',
        period: 7,
        group: 1,
        category: 'alkali metal',
      ),
      2: ElementData(
        number: 88,
        symbol: 'Ra',
        name: 'Radium',
        atomicMass: '(226)',
        period: 7,
        group: 2,
        category: 'alkaline earth',
      ),
    },
  };

  ElementData? selected;

  Color categoryColor(String category) {
    switch (category) {
      case 'alkali metal':
        return Colors.orange.shade300;
      case 'alkaline earth':
        return Colors.orange.shade100;
      case 'transition metal':
        return Colors.blueGrey.shade200;
      case 'post-transition':
        return Colors.blueGrey.shade100;
      case 'metalloid':
        return Colors.green.shade200;
      case 'nonmetal':
        return Colors.green.shade100;
      case 'halogen':
        return Colors.purple.shade200;
      case 'noble gas':
        return Colors.purple.shade100;
      default:
        return Colors.grey.shade200;
    }
  }

  Widget buildCell(int r, int c) {
    final element = elementsMap[r]?[c];
    if (element == null) {
      return Container(
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(6),
        ),
      );
    }

    return GestureDetector(
      onTap: () => setState(() => selected = element),
      child: Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: categoryColor(element.category),
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
          border: Border.all(color: Colors.black12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              element.number.toString(),
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Center(
                child: Text(
                  element.symbol,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Text(
              element.name,
              style: const TextStyle(fontSize: 10),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Periodic Table (demo)')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Table grid (scrollable horizontally for small screens)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: List.generate(periods, (rIndex) {
                    final period = rIndex + 1;
                    return Row(
                      children: List.generate(groups, (cIndex) {
                        final group = cIndex + 1;
                        return SizedBox(
                          width: 88,
                          height: 88,
                          child: buildCell(period, group),
                        );
                      }),
                    );
                  }),
                ),
              ),
            ),

            const SizedBox(height: 8),

            // Selected element details
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: selected == null
                  ? const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text('Tap any element tile to see details here.'),
                    )
                  : Container(
                      key: ValueKey(selected!.number),
                      margin: const EdgeInsets.all(12),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: categoryColor(selected!.category),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                selected!.symbol,
                                style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${selected!.name} (${selected!.symbol})',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text('Atomic number: ${selected!.number}'),
                                Text('Atomic mass: ${selected!.atomicMass}'),
                                Text(
                                  'Period: ${selected!.period}, Group: ${selected!.group}',
                                ),
                                Text('Category: ${selected!.category}'),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.close),
                            onPressed: () => setState(() => selected = null),
                          ),
                        ],
                      ),
                    ),
            ),
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'Note: This demo has many elements filled but not all — add more entries to elementsMap to complete the table, and adjust styling as needed.',
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),
            ),
            const SizedBox(height: 14),
          ],
        ),
      ),
    );
  }
}
