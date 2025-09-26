import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() => runApp(const CalculatorApp());

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator - Jawan Pakistan Assignment',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0B0B0B),
      ),
      home: const CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _input = '';
  String _result = '0';
  String _lastAnswer = '';

  final List<String> buttons = [
    'C',
    'DEL',
    '/',
    'x',
    '7',
    '8',
    '9',
    '-',
    '4',
    '5',
    '6',
    '+',
    '1',
    '2',
    '3',
    '=',
    '0',
    '.',
    'ANS',
  ];

  final Set<String> _operators = {'+', '-', 'x', '/', '*'};

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final resultFont = width * 0.1;
    final inputFont = width * 0.06;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculator - Jawan Pakistan Assignment',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      reverse: true,
                      child: Text(
                        _input,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: inputFont,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Flexible(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerRight,
                        child: Text(
                          _result,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: resultFont,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: const BoxDecoration(
                  color: Color(0xFF1B1B1B),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final buttonSize = constraints.maxWidth / 4 - 12;
                    return GridView.builder(
                      itemCount: buttons.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                            childAspectRatio: 1,
                          ),
                      itemBuilder: (context, index) {
                        final btn = buttons[index];
                        return _CalcButton(
                          text: btn,
                          color: _buttonColor(btn),
                          size: buttonSize,
                          onTap: () => _onButtonPressed(btn),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _buttonColor(String b) {
    if (b == 'C') return const Color(0xFFEF476F);
    if (b == 'DEL') return const Color(0xFFFB8B24);
    if (b == '=') return const Color(0xFF06D6A0);
    if (_operators.contains(b)) return const Color(0xFF4D96FF);
    return const Color(0xFF2A2A2A);
  }

  void _onButtonPressed(String b) {
    setState(() {
      if (b == 'C') {
        _input = '';
        _result = '0';
        return;
      }
      if (b == 'DEL') {
        if (_input.isNotEmpty) {
          _input = _input.substring(0, _input.length - 1);
        }
        return;
      }
      if (b == 'ANS') {
        if (_lastAnswer.isNotEmpty) _input += _lastAnswer;
        return;
      }
      if (b == '=') {
        _evaluate();
        return;
      }
      if (_operators.contains(b)) {
        if (_input.isEmpty) {
          if (b == '-') _input += b;
          return;
        }
        String last = _input[_input.length - 1];
        if (_operators.contains(last)) {
          _input = _input.substring(0, _input.length - 1) + b;
        } else {
          _input += b;
        }
        return;
      }
      if (b == '.') {
        if (!_canAddDot()) return;
        _input += b;
        return;
      }
      _input += b;
    });
  }

  bool _canAddDot() {
    if (_input.isEmpty) return true;
    int lastOpIndex = -1;
    for (int i = _input.length - 1; i >= 0; i--) {
      if (_operators.contains(_input[i])) {
        lastOpIndex = i;
        break;
      }
    }
    final lastNumber = lastOpIndex == -1
        ? _input
        : _input.substring(lastOpIndex + 1);
    return !lastNumber.contains('.');
  }

  void _evaluate() {
    if (_input.isEmpty) return;
    try {
      String exp = _input.replaceAll('x', '*');
      if (_operators.contains(exp[exp.length - 1])) {
        exp = exp.substring(0, exp.length - 1);
      }
      Parser p = Parser();
      Expression expression = p.parse(exp);
      double res = expression.evaluate(EvaluationType.REAL, ContextModel());
      String display = res % 1 == 0 ? res.toInt().toString() : res.toString();
      _result = display;
      _lastAnswer = display;
    } catch (e) {
      _result = 'Error';
    }
  }
}

class _CalcButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;
  final double size;
  const _CalcButton({
    required this.text,
    required this.onTap,
    required this.color,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    final isOperator =
        (text == 'C' ||
        text == 'DEL' ||
        text == '=' ||
        ['/', 'x', '-', '+', '*'].contains(text));
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: isOperator ? 22 : 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
