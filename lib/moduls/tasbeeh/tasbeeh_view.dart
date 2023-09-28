import 'package:flutter/material.dart';

class TasbeehView extends StatefulWidget {
  const TasbeehView({super.key});

  @override
  State<TasbeehView> createState() => _TasbeehViewState();
}

class _TasbeehViewState extends State<TasbeehView> {
  int counter = 0;
  double angle = 0;
  List<String> tasbeeh = ["سبحان الله", "الحمدلله", "الله أكبر"];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
        child: Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Center(
              child: Image.asset("assets/images/head_of_seb7a.png"),
            ),
            Container(
              margin: EdgeInsets.only(top: 75, bottom: 30),
              child: Transform.rotate(
                  angle: angle,
                  child: Theme(
                    data: ThemeData(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    child: InkWell(
                        onTap: () {
                          clickOnImage();
                        },
                        child: Center(
                            child: Image.asset(
                                "assets/images/body_of_seb7a.png"))),
                  )),
            ),
          ],
        ),
        Text(
          "عدد التسبيحات",
          style: theme.textTheme.bodyLarge,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 50),
          alignment: Alignment.center,
          width: 50,
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xFFFB7935F),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            "$counter",
            style: theme.textTheme.bodyLarge,
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.circular(10)),
          width: 150,
          child: Text(
            "${tasbeeh[currentIndex]}",
            style: theme.textTheme.bodyMedium,
          ),
        )
      ],
    ));
  }

  void clickOnImage() {
    angle += 3;
    if (counter == 30) {
      counter = 0;
      currentIndex++;
      if (currentIndex > 2) {
        currentIndex = 0;
      }
    }
    counter++;

    setState(() {});
  }
}
