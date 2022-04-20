import 'package:flutter/cupertino.dart';
import 'package:truth_and_dare/models/players_model.dart';

class CurrentState extends ChangeNotifier{

  List<PlayersModel> players = [];




  String addPlayerData({required String name}) {
    String retVal = "error";

    try{
      players.add(PlayersModel(name: name, completed: 0, forfeited: 0, score: 0, playerId: players.length));
      retVal = "success";
    }catch(e) {
      retVal = "error";
    }
    notifyListeners();
    return retVal;
  }

  String removePlayerData({required int playerId}) {
    String retVal = "error";

    print("This is the player id that is going to be removed $playerId");
    try{
      // find the index to be removed
      late int indexToRemove;
      for (var element in players) {
        if(element.playerId == playerId) {
          indexToRemove = players.indexOf(element);
        }
      }
      players.removeAt(indexToRemove);

      retVal = "success";
    }catch(e) {
      retVal = "error";
    }

    notifyListeners();
    return retVal;
  }


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