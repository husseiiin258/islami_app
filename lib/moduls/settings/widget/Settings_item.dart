import 'package:flutter/material.dart';

typedef settingsOptionClicked = void Function();

class SettingsItems extends StatelessWidget {
  final String settingsOptionTitle, selectedOption;
  final settingsOptionClicked onOptionTap;

  const SettingsItems(
      {super.key,
      required this.settingsOptionTitle,
      required this.selectedOption,
      required this.onOptionTap});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            settingsOptionTitle,
            style: theme.textTheme.bodyLarge,
          ),
        ),
        GestureDetector(
          onTap: onOptionTap,
          child: Container(
            height: 50,
            width: mediaQuery.width,
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: theme.primaryColor, width: 1.5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(selectedOption), Icon(Icons.arrow_drop_down)],
            ),
          ),
        ),
      ],
    );
  }
}
