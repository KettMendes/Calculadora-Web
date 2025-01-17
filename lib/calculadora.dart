import 'package:flutter/material.dart';
import 'package:expressions/expressions.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  String _expressao = '';
  String _resultado = '';

  void _pressionarBotao(String valor) {
    setState(() {
      if (valor == '=') {
        try {
          final expression = Expression.parse(_expressao.replaceAll('÷', '/').replaceAll('x', '*'));
          const evaluator = ExpressionEvaluator();
          final resultado = evaluator.eval(expression, {});
          _resultado = resultado.toString();
        } catch (e) {
          _resultado = 'Erro';
        }
      } else if (valor == 'C') {
        _expressao = '';
        _resultado = '';
      } else {
        _expressao += valor;
      }
    });
  }
  Widget _botao(String valor, MaterialColor cor) {
    return InkWell(
      onTap: () => _pressionarBotao(valor),
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(5.0),
        width: 15, //  largura dos botões 
        height: 15, //  altura dos botões 
        decoration: BoxDecoration(
          color: cor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          valor,
          style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: const Color.fromARGB(127, 238, 238, 238), // cor do visor1
            alignment: Alignment.center,
            child: Text(
              _expressao,
              style: const TextStyle(fontSize: 28),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: const Color.fromARGB(126, 135, 247, 209), // cor do visor2
            alignment: Alignment.center,
            child: Text(
              _resultado,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: GridView.count(
            crossAxisCount: 4,
            childAspectRatio: 2,
            children: [
              _botao('7', Colors.deepPurple),
              _botao('8', Colors.deepPurple),
              _botao('9', Colors.deepPurple),
              _botao('÷', Colors.orange),
              _botao('4', Colors.deepPurple),
              _botao('5', Colors.deepPurple),
              _botao('6', Colors.deepPurple),
              _botao('x', Colors.orange),
              _botao('1', Colors.deepPurple),
              _botao('2', Colors.deepPurple),
              _botao('3', Colors.deepPurple),
              _botao('-', Colors.orange),
              _botao('0', Colors.deepPurple),
              _botao('.', Colors.deepPurple),
              _botao('=', Colors.green),
              _botao('+', Colors.orange),
              _botao('C', Colors.red),
            ],
          ),
        ),
      ],
    );
  }
}
