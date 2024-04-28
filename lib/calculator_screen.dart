import 'package:calculator/calculator_button_layout.dart';
import 'package:calculator/input_widget.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
   CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController inputController = TextEditingController();

  TextEditingController resultController = TextEditingController();

  void _calculate(String value) {
    setState(() {
      switch (value) {
      case "AC":
        inputController.clear();
        resultController.clear();
        break;
      case "Del":
        inputController.text = inputController.text.substring(0, inputController.text.length - 1);
        break;
      case "=":
        resultController.text = inputController.text;
      case "+":
        resultController.text = inputController.text;
      case "-":
        resultController.text = inputController.text;
      case "X":
        resultController.text = inputController.text;
      case "/":
        resultController.text = inputController.text;
        break;
      default:
        inputController.text += value;
        break;
    }
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                color: Colors.amber,
                child: InputWidget(controller: inputController,),
              ),
              const SizedBox(height: 10),
              Container(
                height: 150,
                width: double.infinity,
                color: Colors.black,
                child: InputWidget(controller: resultController,),
              ),
              const SizedBox(height: 5),
               CalculatorButtonLayout(),
            ],
          ),
        ),
      ),
    );
  }
}
