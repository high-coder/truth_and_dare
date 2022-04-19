import 'package:flutter/cupertino.dart';
import 'package:truth_and_dare/models/players_model.dart';

class CurrentState extends ChangeNotifier{

  List<PlayersModel> players = [];




  // increase the score by one only when successful
  increaseTheScore(int playerId) {
    for (var element in players) {
      if(element.playerId == playerId) {
        element.score +=1;
        element.completed+=1;
      }
    }
  }



  // time out or cancelled the dare
  forfeitTheScore(int playerId) {
    for (var element in players) {
      if(element.playerId == playerId) {
        element.forfeited +=1;
      }
    }
  }


}