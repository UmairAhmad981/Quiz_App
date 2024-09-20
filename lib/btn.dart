import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  final Function clk;
  final String str;

  // Using initializer list and making clk final for immutability
  const Btn( this.clk,this.str, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.blue),
        ),
        onPressed: () => clk(),  // Correctly passing the function
        child: Text(str),
      ),
    );
  }
}
