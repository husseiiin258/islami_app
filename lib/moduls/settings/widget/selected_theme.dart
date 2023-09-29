import 'package:flutter/material.dart';

class SelectedTheme extends StatelessWidget {
  final String selectedTitle;

  const SelectedTheme({super.key, required this.selectedTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white24,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text("Light"), Icon(Icons.check)],
      ),
    );
  }
}
