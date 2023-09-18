import 'package:flutter/material.dart';
class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Radio Screen",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 50,
        ),
      ),
    );
  }
}