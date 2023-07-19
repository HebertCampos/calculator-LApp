import 'package:calculator/screens/widgets/botton_w.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/material.dart';

import 'widgets/padding_w.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String expresao = '';
  double valor = 0;

  void incrementaExpressao(String expres) {
    setState(() {
      expresao += expres;
    });
  }

  void zera() {
    setState(() {
      expresao = '';
      valor = 0;
    });
  }

  void substituiValor() {
    setState(() {
      expresao = valor.toString();
    });
  }

  void calculateExpression(String expresao) {
    Parser p = Parser();
    Expression exp = p.parse(expresao);
    ContextModel cm = ContextModel();
    setState(() {
      valor = exp.evaluate(EvaluationType.REAL, cm);
    });
  }

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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  expresao,
                  style: const TextStyle(color: Color(0xFF84A7A1)),
                ),
              ),
            ),
            const Divider(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 35,
              color: const Color(0xFF0E2954),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  valor.toString(),
                  style: TextStyle(color: Color(0xFF84A7A1)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PaddingWidget(
                    botton: BottonWidget(
                        botao: '1',
                        expresao: incrementaExpressao,
                        valorExpresao: expresao)),
                PaddingWidget(
                    botton: BottonWidget(
                        botao: '2',
                        expresao: incrementaExpressao,
                        valorExpresao: expresao)),
                PaddingWidget(
                    botton: BottonWidget(
                        botao: '3',
                        expresao: incrementaExpressao,
                        valorExpresao: expresao)),
                PaddingWidget(
                    botton: BottonWidget(
                        botao: '/',
                        expresao: incrementaExpressao,
                        valorExpresao: expresao)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PaddingWidget(
                    botton: BottonWidget(
                        botao: '4',
                        expresao: incrementaExpressao,
                        valorExpresao: expresao)),
                PaddingWidget(
                    botton: BottonWidget(
                        botao: '5',
                        expresao: incrementaExpressao,
                        valorExpresao: expresao)),
                PaddingWidget(
                    botton: BottonWidget(
                        botao: '6',
                        expresao: incrementaExpressao,
                        valorExpresao: expresao)),
                PaddingWidget(
                    botton: BottonWidget(
                        botao: '*',
                        expresao: incrementaExpressao,
                        valorExpresao: expresao)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PaddingWidget(
                    botton: BottonWidget(
                        botao: '7',
                        expresao: incrementaExpressao,
                        valorExpresao: expresao)),
                PaddingWidget(
                    botton: BottonWidget(
                        botao: '8',
                        expresao: incrementaExpressao,
                        valorExpresao: expresao)),
                PaddingWidget(
                    botton: BottonWidget(
                        botao: '9',
                        expresao: incrementaExpressao,
                        valorExpresao: expresao)),
                PaddingWidget(
                    botton: BottonWidget(
                        botao: '-',
                        expresao: incrementaExpressao,
                        valorExpresao: expresao)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PaddingWidget(
                    botton: BottonWidget(
                        botao: '.',
                        expresao: incrementaExpressao,
                        valorExpresao: expresao)),
                PaddingWidget(
                    botton: BottonWidget(
                        botao: '0',
                        expresao: incrementaExpressao,
                        valorExpresao: expresao)),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: 70,
                    color: const Color(0xFF0E2954),
                    child: ElevatedButton(
                      onPressed: () {
                        calculateExpression(expresao);
                        substituiValor();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0E2954)),
                      child: const Text(
                        "=",
                        style: TextStyle(
                            color: Color(0xFF84A7A1),
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      ),
                    ),
                  ),
                ),
                PaddingWidget(
                    botton: BottonWidget(
                        botao: '+',
                        expresao: incrementaExpressao,
                        valorExpresao: expresao)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.all(8),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: 70,
                    color: const Color(0xFF0E2954),
                    child: ElevatedButton(
                      onPressed: () {
                        zera();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0E2954)),
                      child: const Text(
                        "C",
                        style: TextStyle(
                            color: Color(0xFF84A7A1),
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
