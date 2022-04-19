import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/widgets/fancy_button.dart';

class TurnPage extends StatefulWidget {
  const TurnPage({Key? key}) : super(key: key);

  @override
  State<TurnPage> createState() => _TurnPageState();
}

class _TurnPageState extends State<TurnPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: SafeArea(
        child: Container(
          width: size.width,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              AutoSizeText(
                "Truth Or Dare",
                style: GoogleFonts.gamjaFlower(color: Colors.white, fontSize: 65),
                maxLines: 1,
                maxFontSize: 65,
                minFontSize: 45,
              ),


              SizedBox(height: 15,),

              Text("Deepak's turn",style: GoogleFonts.gamjaFlower(fontSize: 30,color: Colors.yellowAccent),),
              SizedBox(height: 25,),

              Container(
                width: size.width / 1.6,
                child: FancyButton(
                  showBorderSide: true,
                  onPressed: () {
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context) => GameMode()));
                  },
                  child: Center(
                    child: Text(
                      "TRUTH",
                      style: GoogleFonts.gamjaFlower(
                          fontSize: 35, color: Colors.white),
                    ),
                  ),
                  size: 50,
                  color: Colors.green,
                ),
              ),


              AutoSizeText(
                "OR",
                style: GoogleFonts.gamjaFlower(color: Colors.white, fontSize: 65),
                maxLines: 1,
                maxFontSize: 65,
                minFontSize: 45,
              ),


              Container(
                width: size.width / 1.6,
                child: FancyButton(
                  showBorderSide: true,
                  onPressed: () {
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context) => GameMode()));
                  },
                  child: Center(
                    child: Text(
                      "DARE",
                      style: GoogleFonts.gamjaFlower(
                          fontSize: 35, color: Colors.white),
                    ),
                  ),
                  size: 50,
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
