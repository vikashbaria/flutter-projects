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

  ElementData({
    required this.number,
    required this.symbol,
    required this.name,
    required this.atomicMass,
    required this.period,
    required this.group,
  });
}

class PeriodicTablePage extends StatefulWidget {
  const PeriodicTablePage({super.key});

  @override
  State<PeriodicTablePage> createState() => _PeriodicTablePageState();
}

class _PeriodicTablePageState extends State<PeriodicTablePage> {
  static const int periods = 7;
  static const int groups = 18;

  final Map<int, Map<int, ElementData>> elementsMap = {
    1: {
      1: ElementData(
        number: 1,
        symbol: 'H',
        name: 'Hydrogen',
        atomicMass: '1.008',
        period: 1,
        group: 1,
      ),
      18: ElementData(
        number: 2,
        symbol: 'He',
        name: 'Helium',
        atomicMass: '4.0026',
        period: 1,
        group: 18,
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
      ),
      2: ElementData(
        number: 4,
        symbol: 'Be',
        name: 'Beryllium',
        atomicMass: '9.0122',
        period: 2,
        group: 2,
      ),
      13: ElementData(
        number: 5,
        symbol: 'B',
        name: 'Boron',
        atomicMass: '10.81',
        period: 2,
        group: 13,
      ),
      14: ElementData(
        number: 6,
        symbol: 'C',
        name: 'Carbon',
        atomicMass: '12.011',
        period: 2,
        group: 14,
      ),
      15: ElementData(
        number: 7,
        symbol: 'N',
        name: 'Nitrogen',
        atomicMass: '14.007',
        period: 2,
        group: 15,
      ),
      16: ElementData(
        number: 8,
        symbol: 'O',
        name: 'Oxygen',
        atomicMass: '15.999',
        period: 2,
        group: 16,
      ),
      17: ElementData(
        number: 9,
        symbol: 'F',
        name: 'Fluorine',
        atomicMass: '18.998',
        period: 2,
        group: 17,
      ),
      18: ElementData(
        number: 10,
        symbol: 'Ne',
        name: 'Neon',
        atomicMass: '20.180',
        period: 2,
        group: 18,
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
      ),
      2: ElementData(
        number: 12,
        symbol: 'Mg',
        name: 'Magnesium',
        atomicMass: '24.305',
        period: 3,
        group: 2,
      ),
      13: ElementData(
        number: 13,
        symbol: 'Al',
        name: 'Aluminium',
        atomicMass: '26.982',
        period: 3,
        group: 13,
      ),
      14: ElementData(
        number: 14,
        symbol: 'Si',
        name: 'Silicon',
        atomicMass: '28.085',
        period: 3,
        group: 14,
      ),
      15: ElementData(
        number: 15,
        symbol: 'P',
        name: 'Phosphorus',
        atomicMass: '30.974',
        period: 3,
        group: 15,
      ),
      16: ElementData(
        number: 16,
        symbol: 'S',
        name: 'Sulfur',
        atomicMass: '32.06',
        period: 3,
        group: 16,
      ),
      17: ElementData(
        number: 17,
        symbol: 'Cl',
        name: 'Chlorine',
        atomicMass: '35.45',
        period: 3,
        group: 17,
      ),
      18: ElementData(
        number: 18,
        symbol: 'Ar',
        name: 'Argon',
        atomicMass: '39.948',
        period: 3,
        group: 18,
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
      ),
      2: ElementData(
        number: 20,
        symbol: 'Ca',
        name: 'Calcium',
        atomicMass: '40.078',
        period: 4,
        group: 2,
      ),
      3: ElementData(
        number: 21,
        symbol: 'Sc',
        name: 'Scandium',
        atomicMass: '44.956',
        period: 4,
        group: 3,
      ),
      4: ElementData(
        number: 22,
        symbol: 'Ti',
        name: 'Titanium',
        atomicMass: '47.867',
        period: 4,
        group: 4,
      ),
      5: ElementData(
        number: 23,
        symbol: 'V',
        name: 'Vanadium',
        atomicMass: '50.942',
        period: 4,
        group: 5,
      ),
      6: ElementData(
        number: 24,
        symbol: 'Cr',
        name: 'Chromium',
        atomicMass: '51.996',
        period: 4,
        group: 6,
      ),
      7: ElementData(
        number: 25,
        symbol: 'Mn',
        name: 'Manganese',
        atomicMass: '54.938',
        period: 4,
        group: 7,
      ),
      8: ElementData(
        number: 26,
        symbol: 'Fe',
        name: 'Iron',
        atomicMass: '55.845',
        period: 4,
        group: 8,
      ),
      9: ElementData(
        number: 27,
        symbol: 'Co',
        name: 'Cobalt',
        atomicMass: '58.933',
        period: 4,
        group: 9,
      ),
      10: ElementData(
        number: 28,
        symbol: 'Ni',
        name: 'Nickel',
        atomicMass: '58.693',
        period: 4,
        group: 10,
      ),
      11: ElementData(
        number: 29,
        symbol: 'Cu',
        name: 'Copper',
        atomicMass: '63.546',
        period: 4,
        group: 11,
      ),
      12: ElementData(
        number: 30,
        symbol: 'Zn',
        name: 'Zinc',
        atomicMass: '65.38',
        period: 4,
        group: 12,
      ),
      13: ElementData(
        number: 31,
        symbol: 'Ga',
        name: 'Gallium',
        atomicMass: '69.723',
        period: 4,
        group: 13,
      ),
      14: ElementData(
        number: 32,
        symbol: 'Ge',
        name: 'Germanium',
        atomicMass: '72.630',
        period: 4,
        group: 14,
      ),
      15: ElementData(
        number: 33,
        symbol: 'As',
        name: 'Arsenic',
        atomicMass: '74.922',
        period: 4,
        group: 15,
      ),
      16: ElementData(
        number: 34,
        symbol: 'Se',
        name: 'Selenium',
        atomicMass: '78.971',
        period: 4,
        group: 16,
      ),
      17: ElementData(
        number: 35,
        symbol: 'Br',
        name: 'Bromine',
        atomicMass: '79.904',
        period: 4,
        group: 17,
      ),
      18: ElementData(
        number: 36,
        symbol: 'Kr',
        name: 'Krypton',
        atomicMass: '83.798',
        period: 4,
        group: 18,
      ),
    },
  };

  ElementData? selected;

  Widget buildCell(int r, int c) {
    final element = elementsMap[r]?[c];
    if (element == null) {
      return const SizedBox.shrink();
    }

    return GestureDetector(
      onTap: () => setState(() => selected = element),
      child: Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.black12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
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
        child: SingleChildScrollView(
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
      ),
    );
  }
}
