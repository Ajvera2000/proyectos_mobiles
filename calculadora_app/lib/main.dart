import 'package:flutter/material.dart';
import 'calc_button.dart';

void main() {
  runApp(const CalculadoraApp());
}

class CalculadoraApp extends StatelessWidget {
  const CalculadoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora Flutter',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF202124),
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF303134)),
      ),
      home: const CalculadoraScreen(),
    );
  }
}

class CalculadoraScreen extends StatefulWidget {
  const CalculadoraScreen({super.key});

  @override
  State<CalculadoraScreen> createState() => _CalculadoraScreenState();
}

class _CalculadoraScreenState extends State<CalculadoraScreen> {
  String _output = "0";
  String _operand = "";
  double _num1 = 0;
  double _num2 = 0;

  void _buttonPressed(String value) {
    setState(() {
      if (value == "C") {
        _output = "0";
        _operand = "";
        _num1 = 0;
        _num2 = 0;
      } else if (value == "⌫") {
        if (_output.length > 1) {
          _output = _output.substring(0, _output.length - 1);
        } else {
          _output = "0";
        }
      } else if (value == "+" || value == "-" || value == "×" || value == "÷") {
        _num1 = double.tryParse(_output) ?? 0;
        _operand = value;
        _output = "0";
      } else if (value == "=") {
        _num2 = double.tryParse(_output) ?? 0;
        switch (_operand) {
          case "+":
            _output = (_num1 + _num2).toString();
            break;
          case "-":
            _output = (_num1 - _num2).toString();
            break;
          case "×":
            _output = (_num1 * _num2).toString();
            break;
          case "÷":
            _output = _num2 != 0 ? (_num1 / _num2).toString() : "Error";
            break;
        }
        _operand = "";
      } else if (value == ".") {
        if (!_output.contains(".")) {
          _output += ".";
        }
      } else {
        if (_output == "0") {
          _output = value;
        } else {
          _output += value;
        }
      }
    });
  }

  Widget _buildButton(String text, {Color? color, Color? textColor}) {
    return CalcButton(
      text: text,
      color: color,
      textColor: textColor,
      onPressed: () => _buttonPressed(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculadora Dinámica")),
      body: Column(
        children: [
          Expanded(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(24),
              child: Text(
                _output,
                style: const TextStyle(
                  fontSize: 56,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Row(children: [
                _buildButton("C", color: Colors.redAccent, textColor: Colors.white),
                _buildButton("⌫", color: Colors.grey[700], textColor: Colors.white),
                _buildButton("÷", color: Colors.orange, textColor: Colors.white),
                _buildButton("×", color: Colors.orange, textColor: Colors.white),
              ]),
              Row(children: [
                _buildButton("7"),
                _buildButton("8"),
                _buildButton("9"),
                _buildButton("-", color: Colors.orange, textColor: Colors.white),
              ]),
              Row(children: [
                _buildButton("4"),
                _buildButton("5"),
                _buildButton("6"),
                _buildButton("+", color: Colors.orange, textColor: Colors.white),
              ]),
              Row(children: [
                _buildButton("1"),
                _buildButton("2"),
                _buildButton("3"),
                _buildButton("=", color: Colors.greenAccent[400], textColor: Colors.black),
              ]),
              Row(children: [
                _buildButton("0"),
                _buildButton("."),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
