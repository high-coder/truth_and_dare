import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/text_styles.dart';
import '../utils/widgets/fancy_button.dart';

class CurrentScore extends StatefulWidget {
  const CurrentScore({Key? key}) : super(key: key);

  @override
  State<CurrentScore> createState() => _CurrentScoreState();
}

class _CurrentScoreState extends State<CurrentScore> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            AutoSizeText(
              "Current Scores",
              style: GoogleFonts.gamjaFlower(color: Colors.white, fontSize: 65),
              maxLines: 1,
              maxFontSize: 65,
              minFontSize: 45,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              padding: EdgeInsets.only(left: 10, right: 10),
              height: size.height - 250,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(3)),
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Row(
                    //mainAxisAlignment: Main,
                    children: [
                      Text(
                        "Name",
                        style: scoreNames,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        "Name",
                        style: scoreNames,
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              width: size.width / 2,
              child: FancyButton(
                showBorderSide: true,
                onPressed: () {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => GameMode()));
                },
                child: Center(
                  child: Text(
                    "CONTINUE",
                    style: GoogleFonts.gamjaFlower(
                        fontSize: 25, color: Colors.white),
                  ),
                ),
                size: 50,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
