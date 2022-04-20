import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:truth_and_dare/utils/text_styles.dart';

import '../providers/currentState.dart';
import '../utils/widgets/fancy_button.dart';

class AddPlayers extends StatefulWidget {
  const AddPlayers({Key? key}) : super(key: key);

  @override
  State<AddPlayers> createState() => _AddPlayersState();
}

class _AddPlayersState extends State<AddPlayers> {

  TextEditingController _playerName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    CurrentState _instance = Provider.of<CurrentState>(context,listen:false);
    return Scaffold(
      backgroundColor: Colors.orangeAccent,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 10,right: 10),

            child: Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [

                SizedBox(height: 20,),
                AutoSizeText("Add Players",style: GoogleFonts.gamjaFlower(color: Colors.white,fontSize: 65),maxLines: 1,maxFontSize: 65,minFontSize: 45,),
                Row(
                  children: [
                    Expanded(
                      flex:10,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                        ),
                        controller: _playerName,

                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: IconButton(onPressed: () {
                        if(_playerName.text.isNotEmpty) {
                         String retVal =  _instance.addPlayerData(name: _playerName.text);
                         if(retVal == "success") {
                           _playerName.clear();
                           FocusManager.instance.primaryFocus?.unfocus();
                         } else{
                           Fluttertoast.showToast(
                               msg: "Something went wrong",
                               toastLength: Toast.LENGTH_SHORT,
                               gravity: ToastGravity.CENTER,
                               timeInSecForIosWeb: 1,
                               backgroundColor: Colors.red,
                               textColor: Colors.white,
                               fontSize: 16.0
                           );
                         }

                        }
                      }, icon: Icon(Icons.person_add)),
                    )
                  ],
                ),

                Container(
                  height: size.height/2,
                  child: Consumer<CurrentState>(
                    builder: (context, _,__) {
                      return ListView.builder(
                        itemCount: _instance.players.length,
                        itemBuilder: (context,index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(_instance.players[index].name,style: scoreNames,),
                              IconButton(onPressed: () {
                                if(_instance.players[index].playerId!=null) {
                                  _instance.removePlayerData(playerId: _instance.players[index].playerId);
                                }
                              }, icon: Icon(Icons.remove,color: Colors.white,))
                            ],
                          );
                        },
                      );
                    },
                  )
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
        ),
      ),
    );
  }
}
