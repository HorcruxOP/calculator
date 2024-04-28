import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
   CalculatorButton({super.key, required this.name, required this.color,  required this.onTap});
  final String name;
  final Color color;
   void Function(String) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>onTap(name),
      child: Container(
        height: 90,
        width: 90,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,
        ),
        child: Center(
          child: Text(
            name,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
