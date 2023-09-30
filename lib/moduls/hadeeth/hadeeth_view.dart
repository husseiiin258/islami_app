import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/moduls/hadeeth/hadeeth_details_view.dart';

class HadeethView extends StatefulWidget {
  HadeethView({super.key});

  @override
  State<HadeethView> createState() => _HadeethViewState();
}

class _HadeethViewState extends State<HadeethView> {
  List<HadeethContent> allHadeethContent = [];

  @override
  Widget build(BuildContext context) {
    if (allHadeethContent.isEmpty) readFile();
    var theme = Theme.of(context);
    return Center(
        child: Column(
      children: [
        Image.asset("assets/images/ahadeth_image.png"),
        Divider(
          thickness: 2.2,
          indent: 10,
          endIndent: 10,
          height: 5,
        ),
        Text(
          "الأحاديث",
          style: theme.textTheme.bodyLarge,
        ),
        Divider(
          thickness: 2.2,
          indent: 10,
          endIndent: 10,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: allHadeethContent.length,
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, HadeethDetailsView.routeName,
                          arguments: HadeethContent(
                              title: allHadeethContent[index].title,
                              content: allHadeethContent[index].content));
                    },
                    child: Text(
                      allHadeethContent[index].title,
                      style: theme.textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  )),
        )
      ],
    ));
  }

  readFile() async {
    String text = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadeeth = text.split("#");
    for (int i = 0; i < allHadeeth.length; i++) {
      String singleHadeeth = allHadeeth[i].trim();
      int indexOfFirstLine = singleHadeeth.indexOf("\n");
      String title = singleHadeeth.substring(0, indexOfFirstLine);
      String content = singleHadeeth.substring(indexOfFirstLine + 1);
      HadeethContent hadeethContent =
          HadeethContent(title: title, content: content);
      allHadeethContent.add(hadeethContent);
      setState(() {});
    }
  }
}

class HadeethContent {
  final String title;
  final String content;

  HadeethContent({required this.title, required this.content});
}
