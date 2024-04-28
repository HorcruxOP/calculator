import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  InputWidget({super.key, required this.controller});

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        counterStyle: TextStyle(color: Colors.white),
        border: InputBorder.none,
      ),
    );
  }
}
