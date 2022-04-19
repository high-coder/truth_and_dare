import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:truth_and_dare/screens/game_mode.dart';

import '../../providers/currentState.dart';
import '../../utils/widgets/fancy_button.dart';

class OurHomePage extends StatefulWidget {
  const OurHomePage({Key? key}) : super(key: key);

  @override
  State<OurHomePage> createState() => _OurHomePageState();
}

class _OurHomePageState extends State<OurHomePage> {
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
              AutoSizeText("Truth or Dare",style: GoogleFonts.gamjaFlower(color: Colors.white,fontSize: 65),maxLines: 1,maxFontSize: 65,minFontSize: 45,),
              Spacer(flex: 1,),


              Container(
                width: size.width-70,
                child: FancyButton(
                  showBorderSide: false,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => GameMode()));
                  },
                  child: Center(
                    child: Text(
                      "Play",
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
                      "ADD DARES",
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
                      "ADD TRUTHS",
                      style: GoogleFonts.gamjaFlower(fontSize: 35,color: Colors.white),
                    ),
                  ),
                  size: 100,
                  color: Colors.lightBlueAccent,
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
