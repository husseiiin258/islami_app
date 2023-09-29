import 'package:flutter/material.dart';
import 'package:islami/moduls/settings/widget/selected_option.dart';
import 'package:islami/moduls/settings/widget/unselected_option.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: theme.primaryColor.withOpacity(0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectedOption(selectedTitle: "English"),
          SizedBox(
            height: 40,
          ),
          UnSelectedOption(unSelectedtitle: "العربية")
        ],
      ),
    );
  }
}
