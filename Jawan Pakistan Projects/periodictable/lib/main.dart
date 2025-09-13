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
  };

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
      child: Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
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
