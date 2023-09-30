import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/core/provider/application_provider.dart';
import 'package:islami/moduls/settings/widget/selected_theme.dart';
import 'package:islami/moduls/settings/widget/unselected_theme.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    var locale = AppLocalizations.of(context)!;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {
                appProvider.changeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: appProvider.isDark()
                  ? SelectedTheme(selectedTitle: locale.dark)
                  : UnSelectedTheme(unSelectedtitle: locale.dark)),
          SizedBox(
            height: 40,
          ),
          GestureDetector(
              onTap: () {
                appProvider.changeTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child: appProvider.isDark()
                  ? UnSelectedTheme(unSelectedtitle: locale.light)
                  : SelectedTheme(selectedTitle: locale.light))
        ],
      ),
    );
  }
}
