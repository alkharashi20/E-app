import 'package:flutter/material.dart';

class Textformfailede extends StatelessWidget {
   Textformfailede({super.key,required this.Label, required this.controller});
String Label;
TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,

      decoration: InputDecoration(
        label: Text(Label),
      ),
    );
  }
}
