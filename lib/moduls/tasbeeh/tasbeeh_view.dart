import 'package:flutter/material.dart';

class TasbeehView extends StatefulWidget {
  const TasbeehView({super.key});

  @override
  State<TasbeehView> createState() => _TasbeehViewState();
}

class _TasbeehViewState extends State<TasbeehView> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
        child: Column(
      children: [
        Stack(
          children: [
            Center(
              child: Image.asset("assets/images/head_of_seb7a.png"),
            ),
            Container(
              margin: EdgeInsets.only(top: 75, bottom: 30),
              child:
                  Center(child: Image.asset("assets/images/body_of_seb7a.png")),
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
          child: Text("$counter"),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              counter = counter + 1;
            });
          },
          child: Text(
            "تسبيح",
            style: theme.textTheme.bodyMedium,
          ),
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFFB7935F),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        )
      ],
    ));
  }
}
