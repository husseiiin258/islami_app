import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/core/theme/application_theme.dart';
import 'package:islami/layout/home_layout.dart';
import 'package:islami/moduls/hadeeth/hadeeth_details_view.dart';
import 'package:islami/moduls/quran/quran_details_view.dart';
import 'package:islami/moduls/splash_screen.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale("ar"),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeLayout.routeName: (context) => HomeLayout(),
        QuranDetailsView.routeName: (context) => QuranDetailsView(),
        HadeethDetailsView.routeName: (context) => HadeethDetailsView()
      },
    );
  }
}

