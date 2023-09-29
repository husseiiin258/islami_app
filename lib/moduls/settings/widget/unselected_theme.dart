import 'package:flutter/material.dart';

class UnSelectedTheme extends StatelessWidget {
  final String unSelectedtitle;

  const UnSelectedTheme({super.key, required this.unSelectedtitle});

  @override
  Widget build(BuildContext context) {
    return Text(unSelectedtitle);
  }
}
