import 'package:flutter/material.dart';

class FullSuraDetails extends StatelessWidget {
  String content;
  int index;

  FullSuraDetails({required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Text(
      '$content{${index + 1}}',
      style: Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(color: theme.colorScheme.onSecondary),
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
