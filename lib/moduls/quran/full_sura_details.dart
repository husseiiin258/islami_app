import 'package:flutter/material.dart';

class FullSuraDetails extends StatelessWidget {
  String content;
  int index;

  FullSuraDetails({required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$content{${index + 1}}',
      style: Theme.of(context).textTheme.bodyMedium,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
