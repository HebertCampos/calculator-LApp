import 'package:flutter/material.dart';

class BottonWidget extends StatelessWidget {
  const BottonWidget({
    super.key,
    required this.botao,
    required this.expresao,
  });
  final String botao;
  final void Function(String digito)? expresao;

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
