import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/moduls/quran/quran_view.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "Quran_Details";

   QuranDetailsView({super.key });

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  String content="";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {




    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if (content.isEmpty) {
      readFiles(args.suraNumber);
    }
    ;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("اسلامي"),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 30 , right: 30 , top: 30 , bottom: 120),
          padding: EdgeInsets.symmetric(vertical: 20 , horizontal: 15),
          width: mediaQuery.width,
          height: mediaQuery.height,
          decoration: BoxDecoration(
            color: Color(0xFFF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(" سورة ${args.suraName}", style:
                    theme.textTheme.bodyLarge,),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.play_circle , size: 32 , color: Colors.black,)
                ],
              ),
              Divider(
                thickness: 1.2,
                color: theme.primaryColor,
                endIndent: 20,
                indent: 20,
                height: 25,
              ),

                  Expanded(
                    child: ListView.builder(
                      itemCount: 1,
                  itemBuilder: (context, index) => Text(
                    content,
                    style: theme.textTheme.bodySmall,
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

  readFiles( String index) async {
   String text = await rootBundle.loadString("assets/files/$index.txt");
   content = text ;

   setState(() {
     //allVerses =content.split("\n");
   });
   print(text);
  }
}
