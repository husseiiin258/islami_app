import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/moduls/hadeeth/hadeeth_view.dart';
import 'package:islami/moduls/quran/quran_view.dart';
import 'package:islami/moduls/radio/radio_view.dart';
import 'package:islami/moduls/settings/settings_view.dart';
import 'package:islami/moduls/tasbeeh/tasbeeh_view.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "home_layout";

   HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screens = [
    QuranView() ,
    HadeethView(),
    TasbeehView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context)!.app_title,
            style: theme.textTheme.titleLarge,
          ),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex:selectedIndex ,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/icons/quran.png"),
                ),
                label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/icons/hadeth.png"),
                ),
                label: AppLocalizations.of(context)!.hadeth),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/icons/sebha.png"),
                ),
                label: AppLocalizations.of(context)!.sebha),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/icons/radio_blue.png"),
                ),
                label: AppLocalizations.of(context)!.radio),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settings),
          ],
        ),
      ),
    );
  }
}
