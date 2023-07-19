import 'package:math_expressions/math_expressions.dart';

class Calculator {
  String expresao = '';

  Calculator([expresao]) {
    expresao = this.expresao;
  }

  void soma() {}
  double calculateExpression(String expresao) {
    Parser p = Parser();
    Expression exp = p.parse(expresao);
    ContextModel cm = ContextModel();
    return exp.evaluate(EvaluationType.REAL, cm);
  }
}
