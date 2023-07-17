import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({Key? key, required this.botton}) : super(key: key);
  final Widget botton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 70,
        height: 70,
        color: const Color(0xFF0E2954),
        child: botton,
      ),
    );
  }
}
