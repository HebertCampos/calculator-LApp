import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class BottonWidget extends StatelessWidget {
  const BottonWidget({
    super.key,
    required this.botao,
    required this.expresao,
    required this.valorExpresao,
  });
  final String botao;
  final void Function(String digito)? expresao;
  final String valorExpresao;

  double calculateExpression(String expr) {
    Parser p = Parser();
    Expression exp = p.parse(expr);
    ContextModel cm = ContextModel();
    return exp.evaluate(EvaluationType.REAL, cm);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        expresao!(botao);
      },
      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF0E2954)),
      child: Text(
        botao,
        style: const TextStyle(
            color: Color(0xFF84A7A1),
            fontWeight: FontWeight.bold,
            fontSize: 28),
      ),
    );
  }
}
