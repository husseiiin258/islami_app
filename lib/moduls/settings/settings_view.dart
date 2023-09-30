import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/core/provider/application_provider.dart';
import 'package:islami/moduls/settings/widget/Settings_item.dart';
import 'package:islami/moduls/settings/widget/language_bottom_sheet.dart';
import 'package:islami/moduls/settings/widget/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    var locale = AppLocalizations.of(context)!;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SettingsItems(
              settingsOptionTitle: locale.language,
              selectedOption:
                  appProvider.currentLocale == "en" ? "English" : "العربية",
              onOptionTap: () {
                showLanguageSheet(context);
              }),
          const SizedBox(
            height: 50,
          ),
          SettingsItems(
              settingsOptionTitle: locale.theme_mode,
              selectedOption: appProvider.isDark() ? locale.dark : locale.light,
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
