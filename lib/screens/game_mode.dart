import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../providers/currentState.dart';
import '../../utils/widgets/fancy_button.dart';

class GameMode extends StatefulWidget {
  const GameMode({Key? key}) : super(key: key);

  @override
  State<GameMode> createState() => _GameModeState();
}

class _GameModeState extends State<GameMode> {
  @override
  Widget build(BuildContext context) {
    CurrentState _instance = Provider.of<CurrentState>(context, listen:false);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: SafeArea(
        child: Container(
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              AutoSizeText("Game Mode",style: GoogleFonts.gamjaFlower(color: Colors.white,fontSize: 65),maxLines: 1,maxFontSize: 65,minFontSize: 45,),
              Spacer(flex: 1,),


              Container(
                width: size.width-70,
                child: FancyButton(
                  showBorderSide: false,
                  child: Center(
                    child: Text(
                      "KIDS",
                      style: GoogleFonts.gamjaFlower(fontSize: 35,color: Colors.white),
                    ),
                  ),
                  size: 100,
                  color: Colors.green,
                ),
              ),

              Spacer(flex: 1,),

              Container(
                width: size.width-70,
                child: FancyButton(
                  showBorderSide: false,
                  child: Center(
                    child: Text(
                      "TEEN",
                      style: GoogleFonts.gamjaFlower(fontSize: 35,color: Colors.white),
                    ),
                  ),
                  size: 100,
                  color: Colors.red,
                ),
              ),

              Spacer(flex: 1,),

              Container(
                width: size.width-70,
                child: FancyButton(
                  showBorderSide: false,

                  child: Center(
                    child: Text(
                      "ADULT",
                      style: GoogleFonts.gamjaFlower(fontSize: 35,color: Colors.white),
                    ),
                  ),
                  size: 100,
                  color: Colors.lightBlueAccent,
                ),
              ),

              Spacer(flex: 1,),

              Container(
                width: size.width-70,
                child: FancyButton(
                  showBorderSide: false,

                  child: Center(
                    child: Text(
                      "COUPLES",
                      style: GoogleFonts.gamjaFlower(fontSize: 35,color: Colors.white),
                    ),
                  ),
                  size: 100,
                  color: Colors.purpleAccent,
                ),
              ),

              Spacer(flex: 3,),


            ],
          ),
        ),
      ),
    );
  }
}
