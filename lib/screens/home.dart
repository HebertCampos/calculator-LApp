import 'package:calculator/screens/widgets/botton_w.dart';
import 'package:flutter/material.dart';

import 'widgets/padding_w.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculadora LApp',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        color: const Color(0xff1f6e8c),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: const Color(0xFF0E2954),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '1+2-8*1',
                  style: TextStyle(color: Color(0xFF84A7A1)),
                ),
              ),
            ),
            const Divider(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 35,
              color: const Color(0xFF0E2954),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '= 25',
                  style: TextStyle(color: Color(0xFF84A7A1)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PaddingWidget(botton: BottonWidget(botao: '1')),
                PaddingWidget(botton: BottonWidget(botao: '2')),
                PaddingWidget(botton: BottonWidget(botao: '3')),
                PaddingWidget(botton: BottonWidget(botao: '/')),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PaddingWidget(botton: BottonWidget(botao: '4')),
                PaddingWidget(botton: BottonWidget(botao: '5')),
                PaddingWidget(botton: BottonWidget(botao: '6')),
                PaddingWidget(botton: BottonWidget(botao: '*')),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PaddingWidget(botton: BottonWidget(botao: '7')),
                PaddingWidget(botton: BottonWidget(botao: '8')),
                PaddingWidget(botton: BottonWidget(botao: '9')),
                PaddingWidget(botton: BottonWidget(botao: '-')),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PaddingWidget(botton: BottonWidget(botao: '.')),
                PaddingWidget(botton: BottonWidget(botao: '0')),
                PaddingWidget(botton: BottonWidget(botao: '=')),
                PaddingWidget(botton: BottonWidget(botao: '+')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
