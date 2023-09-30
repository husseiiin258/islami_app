import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/core/provider/application_provider.dart';
import 'package:islami/moduls/hadeeth/hadeeth_view.dart';
import 'package:provider/provider.dart';

class HadeethDetailsView extends StatefulWidget {
  static const String routeName = "Hadeeth_Details";

  HadeethDetailsView({super.key});

  @override
  State<HadeethDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<HadeethDetailsView> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadeethContent;

    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(appProvider.backgroundImage()),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.app_title,
            style: theme.textTheme.titleLarge,
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 120),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          width: mediaQuery.width,
          height: mediaQuery.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onBackground.withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(
                args.title,
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.onSecondary,
                ),
              ),
              Divider(
                thickness: 1.2,
                endIndent: 20,
                indent: 20,
                height: 25,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) => Text(
                    args.content,
                    style: theme.textTheme.bodySmall!
                        .copyWith(color: theme.colorScheme.onSecondary),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
