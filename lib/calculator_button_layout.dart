import 'package:calculator/calculator_button.dart';
import 'package:calculator/input_widget.dart';
import 'package:flutter/material.dart';

class CalculatorButtonLayout extends StatefulWidget {
  const CalculatorButtonLayout({super.key});

  @override
  State<CalculatorButtonLayout> createState() => _CalculatorButtonLayoutState();
}

class _CalculatorButtonLayoutState extends State<CalculatorButtonLayout> {
  TextEditingController input1Controller = TextEditingController();
  TextEditingController input2Controller = TextEditingController();

  TextEditingController resultController = TextEditingController();
  bool kuchBhi = false;

  void onButtonTap(String value) {
    setState(() {
      
      if (value case "AC") {
        input1Controller.clear();
        input2Controller.clear();
        resultController.clear();
      } else if (value case "Del") {
        if (kuchBhi == false) {
          input1Controller.text = input1Controller.text
              .substring(0, input1Controller.text.length - 1);
        } else if (input2Controller.text == -1) {
          kuchBhi = false;
          input1Controller.text = input1Controller.text
              .substring(0, input1Controller.text.length - 1);
        } else {
          input2Controller.text = input2Controller.text
              .substring(0, input2Controller.text.length - 1);
        }
      } else if (value case "=") {
        kuchBhi = false;
        double result =0;
        resultController.text = result.toString();
      } else if (value case "+") {
        kuchBhi = true;
        resultController.text = (double.parse(input1Controller.text) +
                double.parse(input2Controller.text))
            .toString();
      } else if (value case "-") {
        kuchBhi = true;
        double result =0;
        result = (double.parse(input1Controller.text) -
            double.parse(input2Controller.text));
      } else if (value case "/") {
        kuchBhi = true;
        resultController.text = (double.parse(input1Controller.text) -
                double.parse(input2Controller.text))
            .toString();
      } else {
        kuchBhi = true;
      }
    });
  }

  void onButtonclick(value) {
    if (kuchBhi == true) {
      input2Controller.text += value;
    } else {
      input1Controller.text += value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 90,
                width: double.infinity,
                color: Colors.amber,
                child: Center(
                  child: InputWidget(
                    controller: input1Controller,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 90,
                width: double.infinity,
                color: Colors.amber,
                child: Center(
                  child: InputWidget(
                    controller: input2Controller,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 90,
                width: double.infinity,
                color: Colors.amber,
                child: Center(
                  child: InputWidget(
                    controller: resultController,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Column(
                children: [
                  Row(
                    children: [
                      CalculatorButton(
                        name: "AC",
                        color: Colors.black,
                        onTap: onButtonTap,
                      ),
                      const SizedBox(width: 10),
                      CalculatorButton(
                        name: "%",
                        color: Colors.black,
                        onTap: onButtonTap,
                      ),
                      const SizedBox(width: 10),
                      CalculatorButton(
                        name: "Del",
                        color: Colors.black,
                        onTap: onButtonTap,
                      ),
                      const SizedBox(width: 10),
                      CalculatorButton(
                        name: "/",
                        color: Colors.black,
                        onTap: onButtonTap,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  CalculatorButton(
                    name: "7",
                    color: Colors.orange,
                    onTap: onButtonclick,
                  ),
                  const SizedBox(width: 10),
                  CalculatorButton(
                    name: "8",
                    color: Colors.orange,
                    onTap: onButtonclick,
                  ),
                  const SizedBox(width: 10),
                  CalculatorButton(
                    name: "9",
                    color: Colors.orange,
                    onTap: onButtonclick,
                  ),
                  const SizedBox(width: 10),
                  CalculatorButton(
                    name: "X",
                    color: Colors.black,
                    onTap: onButtonTap,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  CalculatorButton(
                    name: "4",
                    color: Colors.orange,
                    onTap: onButtonclick,
                  ),
                  const SizedBox(width: 10),
                  CalculatorButton(
                    name: "5",
                    color: Colors.orange,
                    onTap: onButtonclick,
                  ),
                  const SizedBox(width: 10),
                  CalculatorButton(
                    name: "6",
                    color: Colors.orange,
                    onTap: onButtonclick,
                  ),
                  const SizedBox(width: 10),
                  CalculatorButton(
                    name: "-",
                    color: Colors.black,
                    onTap: onButtonTap,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  CalculatorButton(
                    name: "1",
                    color: Colors.orange,
                    onTap: onButtonclick,
                  ),
                  const SizedBox(width: 10),
                  CalculatorButton(
                    name: "2",
                    color: Colors.orange,
                    onTap: onButtonclick,
                  ),
                  const SizedBox(width: 10),
                  CalculatorButton(
                    name: "3",
                    color: Colors.orange,
                    onTap: onButtonclick,
                  ),
                  const SizedBox(width: 10),
                  CalculatorButton(
                    name: "+",
                    color: Colors.black,
                    onTap: onButtonTap,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  CalculatorButton(
                    name: "00",
                    color: Colors.orange,
                    onTap: onButtonclick,
                  ),
                  const SizedBox(width: 10),
                  CalculatorButton(
                    name: "0",
                    color: Colors.orange,
                    onTap: onButtonclick,
                  ),
                  const SizedBox(width: 10),
                  CalculatorButton(
                    name: ".",
                    color: Colors.orange,
                    onTap: onButtonclick,
                  ),
                  const SizedBox(width: 10),
                  CalculatorButton(
                    name: "=",
                    color: const Color.fromARGB(255, 1, 113, 204),
                    onTap: onButtonTap,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
