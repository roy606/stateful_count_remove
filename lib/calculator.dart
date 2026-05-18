/*
import 'package:flutter/material.dart';
import 'package:stateful_widget/widget/calculatorButton.dart';

class Calculatorapp extends StatefulWidget {
  const Calculatorapp({super.key});

  @override
  State<Calculatorapp> createState() => _CalculatorappState();
}

class _CalculatorappState extends State<Calculatorapp> {
  String _output = '0';
  String _input = '';
  String operand = '';
  double num1 = 0;
  double num2 = 0;

  void buttonPressed(String value){
    setState(() {
      if(value == 'C'){
         _output = '0';
         _input = '';
         operand = '';
         num1 = 0;
         num2 = 0;
      }else if (value == '='){
        num2 = double.parse(_input);
        if(operand == '+'){
          _output = (num1 + num2).toString();
        }else if (operand == '-'){
          _output = (num1 - num2).toString();
        }else if (operand == 'x'){
          _output = (num1 * num2).toString();
        }else if (operand == '÷'){
          _output = (num2 != 0 ) ? (num1 / num2).toString() : 'Syntax Error';
        }
        _input = _output;

      }else if(['+','-','x','÷'].contains(value)){
        num1 = double.parse(_input);
        operand = value;
        _input = '';
      }else{
        _input += value;
        _output = _input;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Calculator",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(24),
              child: Text(_output,
              style: TextStyle(fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            
              ),),
            ),
          ),
         Row(
           children: [
             buildButton(text: '7', onClick: () => buttonPressed('7'),),
             buildButton(text: '8',onClick: () => buttonPressed('8'),),
             buildButton(text: '9',onClick: () => buttonPressed('9'),),
             buildButton(text: '÷', onClick: () => buttonPressed('÷'),color:Colors.orange),
           ],
         ),
          Row(
            children: [
              buildButton(text: '4',onClick: () => buttonPressed('4'),),
              buildButton(text: '5',onClick: () => buttonPressed('5'),),
              buildButton(text: '6',onClick: () => buttonPressed('6'),),
              buildButton(text: 'x', onClick: () => buttonPressed('x'),color:Colors.orange),
            ],
          ),
          Row(
            children: [
              buildButton(text: '1',onClick: () => buttonPressed('1'),),
              buildButton(text: '2',onClick: () => buttonPressed('2'),),
              buildButton(text: '3',onClick: () => buttonPressed('3'),),
              buildButton(text: '-',onClick: () => buttonPressed('-'),color:Colors.orange),


            ],
          ),
          Row(
            children: [
              buildButton(text: 'C',onClick: () => buttonPressed('C'),color: Colors.red,),
              buildButton(text: '0',onClick: () => buttonPressed('0'),),
              buildButton(text: '=',onClick: () => buttonPressed('='),color: Colors.green,),
              buildButton(text: '+',onClick: () => buttonPressed('+'),color:Colors.orange),

            ],
          ),
        ],
      ),
    );
  }
}

 */

/*

import 'package:flutter/material.dart';
import 'package:stateful_widget/widget/calculatorButton.dart';

class Calculatorapp extends StatefulWidget {
  const Calculatorapp({super.key});

  @override
  State<Calculatorapp> createState() => _CalculatorappState();
}

class _CalculatorappState extends State<Calculatorapp> {
  String _output = '0';
  String _input = '';
  String operand = '';
  double num1 = 0;
  double num2 = 0;

  void buttonPressed(String value) {
    setState(() {
      if (value == 'C') {
        _output = '0';
        _input = '';
        operand = '';
        num1 = 0;
        num2 = 0;
      }

      else if (value == '⌫') {
        if (_input.isNotEmpty) {
          _input = _input.substring(0, _input.length - 1);
          _output = _input.isEmpty ? '0' : _input;
        }
      }

      else if (value == '%') {
        if (_input.isNotEmpty) {
          double number = double.parse(_input);
          _output = (number / 100).toString();
          _input = _output;
        }
      }

      else if (value == '=') {
        num2 = double.parse(_input);

        if (operand == '+') {
          _output = (num1 + num2).toString();
        } else if (operand == '-') {
          _output = (num1 - num2).toString();
        } else if (operand == 'x') {
          _output = (num1 * num2).toString();
        } else if (operand == '÷') {
          _output =
          (num2 != 0) ? (num1 / num2).toString() : 'Syntax Error';
        }

        _input = _output;
      }

      else if (['+', '-', 'x', '÷'].contains(value)) {
        num1 = double.parse(_input);
        operand = value;
        _input = '';
        _output = value;
      }

      else {
        _input += value;
        _output = _input;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Calculator",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(24),
              child: Text(
                _output,
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          Row(
            children: [
              buildButton(
                text: 'C',
                onClick: () => buttonPressed('C'),
                color: Colors.red,
              ),
              buildButton(
                text: '%',
                onClick: () => buttonPressed('%'),
              ),
              buildButton(
                text: '⌫',
                onClick: () => buttonPressed('⌫'),
              ),
              buildButton(
                text: '÷',
                onClick: () => buttonPressed('÷'),
                color: Colors.orange,
              ),
            ],
          ),

          Row(
            children: [
              buildButton(text: '7', onClick: () => buttonPressed('7')),
              buildButton(text: '8', onClick: () => buttonPressed('8')),
              buildButton(text: '9', onClick: () => buttonPressed('9')),
              buildButton(
                text: 'x',
                onClick: () => buttonPressed('x'),
                color: Colors.orange,
              ),
            ],
          ),

          Row(
            children: [
              buildButton(text: '4', onClick: () => buttonPressed('4')),
              buildButton(text: '5', onClick: () => buttonPressed('5')),
              buildButton(text: '6', onClick: () => buttonPressed('6')),
              buildButton(
                text: '-',
                onClick: () => buttonPressed('-'),
                color: Colors.orange,
              ),
            ],
          ),

          Row(
            children: [
              buildButton(text: '1', onClick: () => buttonPressed('1')),
              buildButton(text: '2', onClick: () => buttonPressed('2')),
              buildButton(text: '3', onClick: () => buttonPressed('3')),
              buildButton(
                text: '+',
                onClick: () => buttonPressed('+'),
                color: Colors.orange,
              ),
            ],
          ),

          Row(
            children: [
              buildButton(text: '(', onClick: () => buttonPressed('(')),
              buildButton(text: '0', onClick: () => buttonPressed('0')),
              buildButton(text: '.', onClick: () => buttonPressed('.')),
              buildButton(
                text: '=',
                onClick: () => buttonPressed('='),
                color: Colors.green,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

 */


/*
import 'package:flutter/material.dart';
import 'package:stateful_widget/widget/calculatorButton.dart';

class Calculatorapp extends StatefulWidget {
  const Calculatorapp({super.key});

  @override
  State<Calculatorapp> createState() => _CalculatorappState();
}

class _CalculatorappState extends State<Calculatorapp> {
  String _output = '0';
  String _input = '';
  String _history = '';
  String operand = '';

  double num1 = 0;
  double num2 = 0;

  int cursorPosition = 0;
  bool showCursor = false;

  String get displayText {
    if (_input.isEmpty) return '0';

    if (showCursor) {
      return _input.substring(0, cursorPosition) +
          "|" +
          _input.substring(cursorPosition);
    }

    return _input;
  }

  void insertAtCursor(String value) {
    _input = _input.substring(0, cursorPosition) +
        value +
        _input.substring(cursorPosition);

    cursorPosition += value.length;
  }

  void buttonPressed(String value) {
    setState(() {
      if (value == 'C') {
        _output = '0';
        _input = '';
        _history = '';
        operand = '';
        num1 = 0;
        num2 = 0;
        cursorPosition = 0;
        showCursor = false;
      }

      else if (value == '←') {
        if (cursorPosition > 0) {
          cursorPosition--;
          showCursor = true;
        }
        _output = displayText;
      }

      else if (value == '→') {
        if (cursorPosition < _input.length) {
          cursorPosition++;
          showCursor = true;
        }
        _output = displayText;
      }

      else if (value == '⌫') {
        if (_input.isNotEmpty && cursorPosition > 0) {
          _input = _input.substring(0, cursorPosition - 1) +
              _input.substring(cursorPosition);

          cursorPosition--;
        }

        _output = displayText;
      }

      else if (value == '%') {
        if (_input.isNotEmpty) {
          double number = double.parse(_input);
          _input = (number / 100).toString();
          cursorPosition = _input.length;
          _output = _input;
        }
      }

      else if (value == '=') {
        num2 = double.parse(_input);

        _history = "$num1 $operand $num2";

        if (operand == '+') {
          _output = (num1 + num2).toString();
        } else if (operand == '-') {
          _output = (num1 - num2).toString();
        } else if (operand == 'x') {
          _output = (num1 * num2).toString();
        } else if (operand == '÷') {
          _output =
          (num2 != 0) ? (num1 / num2).toString() : 'Syntax Error';
        }

        _input = _output;
        cursorPosition = _input.length;
        showCursor = false;
      }

      else if (['+', '-', 'x', '÷'].contains(value)) {
        num1 = double.parse(_input);
        operand = value;
        _input = '';
        cursorPosition = 0;
        showCursor = false;
      }

      else {
        insertAtCursor(value);
        _output = displayText;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Calculator",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    _history,
                    style: const TextStyle(
                      fontSize: 28,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    _output,
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Row(
            children: [
              buildButton(
                  text: 'C',
                  onClick: () => buttonPressed('C'),
                  color: Colors.red),
              buildButton(
                  text: '←',
                  onClick: () => buttonPressed('←')),
              buildButton(
                  text: '→',
                  onClick: () => buttonPressed('→')),
              buildButton(
                  text: '⌫',
                  onClick: () => buttonPressed('⌫'),
                  color: Colors.orange),
            ],
          ),

          Row(
            children: [
              buildButton(text: '7', onClick: () => buttonPressed('7')),
              buildButton(text: '8', onClick: () => buttonPressed('8')),
              buildButton(text: '9', onClick: () => buttonPressed('9')),
              buildButton(
                  text: '÷',
                  onClick: () => buttonPressed('÷'),
                  color: Colors.orange),
            ],
          ),

          Row(
            children: [
              buildButton(text: '4', onClick: () => buttonPressed('4')),
              buildButton(text: '5', onClick: () => buttonPressed('5')),
              buildButton(text: '6', onClick: () => buttonPressed('6')),
              buildButton(
                  text: 'x',
                  onClick: () => buttonPressed('x'),
                  color: Colors.orange),
            ],
          ),

          Row(
            children: [
              buildButton(text: '1', onClick: () => buttonPressed('1')),
              buildButton(text: '2', onClick: () => buttonPressed('2')),
              buildButton(text: '3', onClick: () => buttonPressed('3')),
              buildButton(
                  text: '-',
                  onClick: () => buttonPressed('-'),
                  color: Colors.orange),
            ],
          ),

          Row(
            children: [
              buildButton(text: '(', onClick: () => buttonPressed('(')),
              buildButton(text: ')', onClick: () => buttonPressed(')')),
              buildButton(text: '0', onClick: () => buttonPressed('0')),
              buildButton(
                  text: '+',
                  onClick: () => buttonPressed('+'),
                  color: Colors.orange),
            ],
          ),

          Row(
            children: [
              buildButton(text: '%', onClick: () => buttonPressed('%')),
              buildButton(text: '.', onClick: () => buttonPressed('.')),
              buildButton(
                  text: '=',
                  onClick: () => buttonPressed('='),
                  color: Colors.green),
            ],
          ),
        ],
      ),
    );
  }
}

 */

import 'package:flutter/material.dart';
import 'package:stateful_widget/widget/calculatorButton.dart';

class Calculatorapp extends StatefulWidget {
  const Calculatorapp({super.key});

  @override
  State<Calculatorapp> createState() => _CalculatorappState();
}

class _CalculatorappState extends State<Calculatorapp> {
  String _input = '';
  String _output = '0';
  String _history = '';

  String operand = '';
  double num1 = 0;
  double num2 = 0;

  int cursorPosition = 0;
  bool showCursor = false;

  String get displayText {
    if (_input.isEmpty) return '0';

    if (showCursor) {
      return _input.substring(0, cursorPosition) +
          "|" +
          _input.substring(cursorPosition);
    }

    return _input;
  }

  void insertAtCursor(String value) {
    _input = _input.substring(0, cursorPosition) +
        value +
        _input.substring(cursorPosition);

    cursorPosition += value.length;
  }

  void buttonPressed(String value) {
    setState(() {

      // CLEAR
      if (value == 'C') {
        _input = '';
        _output = '0';
        _history = '';
        operand = '';
        num1 = 0;
        num2 = 0;
        cursorPosition = 0;
        showCursor = false;
      }

      // CURSOR LEFT
      else if (value == '←') {
        if (cursorPosition > 0) {
          cursorPosition--;
        }
        showCursor = true;
        _output = displayText;
      }

      // CURSOR RIGHT
      else if (value == '→') {
        if (cursorPosition < _input.length) {
          cursorPosition++;
        }
        showCursor = true;
        _output = displayText;
      }

      // BACKSPACE
      else if (value == '⌫') {
        if (_input.isNotEmpty && cursorPosition > 0) {
          _input = _input.substring(0, cursorPosition - 1) +
              _input.substring(cursorPosition);

          cursorPosition--;
        }

        _output = displayText;
      }

      // PERCENT
      else if (value == '%') {
        if (_input.isNotEmpty) {
          double number = double.parse(_input);
          _input = (number / 100).toString();
          cursorPosition = _input.length;
          _output = _input;
        }
      }

      // EQUAL
      else if (value == '=') {
        List<String> parts = _input.split(operand);

        if (parts.length < 2) return;

        num1 = double.parse(parts[0]);
        num2 = double.parse(parts[1]);

        _history = _input;

        if (operand == '+') {
          _output = (num1 + num2).toString();
        } else if (operand == '-') {
          _output = (num1 - num2).toString();
        } else if (operand == 'x') {
          _output = (num1 * num2).toString();
        } else if (operand == '÷') {
          _output =
          (num2 != 0) ? (num1 / num2).toString() : 'Syntax Error';
        }

        _input = _output;
        cursorPosition = _input.length;
        showCursor = false;
      }

      // OPERATORS
      else if (['+', '-', 'x', '÷'].contains(value)) {
        if (_input.isEmpty) return;

        operand = value;
        _input = _input.substring(0, cursorPosition) +
            value +
            _input.substring(cursorPosition);

        cursorPosition++;
        showCursor = false;
      }

      // NUMBERS
      else {
        insertAtCursor(value);
        _output = _input;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Calculator"),
        backgroundColor: Colors.orange,
      ),

      body: Column(
        children: [

          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                  Text(
                    _history,
                    style: const TextStyle(
                      fontSize: 28,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    _output,
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Row(
            children: [
              buildButton(text: 'C', onClick: () => buttonPressed('C'), color: Colors.red),
              buildButton(text: '←', onClick: () => buttonPressed('←')),
              buildButton(text: '→', onClick: () => buttonPressed('→')),
              buildButton(text: '⌫', onClick: () => buttonPressed('⌫'), color: Colors.orange),
            ],
          ),

          Row(
            children: [
              buildButton(text: '7', onClick: () => buttonPressed('7')),
              buildButton(text: '8', onClick: () => buttonPressed('8')),
              buildButton(text: '9', onClick: () => buttonPressed('9')),
              buildButton(text: '÷', onClick: () => buttonPressed('÷'), color: Colors.orange),
            ],
          ),

          Row(
            children: [
              buildButton(text: '4', onClick: () => buttonPressed('4')),
              buildButton(text: '5', onClick: () => buttonPressed('5')),
              buildButton(text: '6', onClick: () => buttonPressed('6')),
              buildButton(text: 'x', onClick: () => buttonPressed('x'), color: Colors.orange),
            ],
          ),

          Row(
            children: [
              buildButton(text: '1', onClick: () => buttonPressed('1')),
              buildButton(text: '2', onClick: () => buttonPressed('2')),
              buildButton(text: '3', onClick: () => buttonPressed('3')),
              buildButton(text: '-', onClick: () => buttonPressed('-'), color: Colors.orange),
            ],
          ),

          Row(
            children: [
              buildButton(text: '(', onClick: () => buttonPressed('(')),
              buildButton(text: ')', onClick: () => buttonPressed(')')),
              buildButton(text: '0', onClick: () => buttonPressed('0')),
              buildButton(text: '+', onClick: () => buttonPressed('+'), color: Colors.orange),
            ],
          ),

          Row(
            children: [
              buildButton(text: '%', onClick: () => buttonPressed('%')),
              buildButton(text: '.', onClick: () => buttonPressed('.')),
              buildButton(text: '=', onClick: () => buttonPressed('='), color: Colors.green),
            ],
          ),
        ],
      ),
    );
  }
}