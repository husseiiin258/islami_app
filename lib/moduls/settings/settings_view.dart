import 'package:flutter/material.dart';
import 'package:islami/moduls/settings/widget/Settings_item.dart';
import 'package:islami/moduls/settings/widget/language_bottom_sheet.dart';
import 'package:islami/moduls/settings/widget/theme_bottom_sheet.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SettingsItems(
              settingsOptionTitle: "Language",
              selectedOption: "English",
              onOptionTap: () {
                showLanguageSheet(context);
              }),
          const SizedBox(
            height: 50,
          ),
          SettingsItems(
              settingsOptionTitle: "Theme Mode",
              selectedOption: "Light",
              onOptionTap: () {
                showThemeSheet(context);
              }),
        ],
      ),
    );
  }

  void showLanguageSheet(context) {
    showModalBottomSheet(
        context: context, builder: (context) => LanguageBottomSheet());
  }

  void showThemeSheet(context) {
    showModalBottomSheet(
        context: context, builder: (context) => ThemeBottomSheet());
  }
}
