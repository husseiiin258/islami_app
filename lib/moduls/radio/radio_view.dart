import 'package:flutter/material.dart';
class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/radio_image.png"),
          Text("اذاعة القرأن الكريم"),
          SizedBox(
            height: 90,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconTheme(
                data: IconThemeData(size: 40, color: Color(0xffB7935F)),
                child: Icon(Icons.skip_previous),
              ),
              SizedBox(
                width: 70,
              ),
              IconTheme(
                data: IconThemeData(size: 70, color: Color(0xffB7935F)),
                child: Icon(Icons.play_arrow),
              ),
              SizedBox(
                width: 70,
              ),
              IconTheme(
                data: IconThemeData(size: 40, color: Color(0xffB7935F)),
                child: Icon(Icons.skip_next),
              ),
            ],
          )
        ],
      ),
    );
  }
}