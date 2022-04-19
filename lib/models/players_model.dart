class PlayersModel {
  String name;   // this will be the name of the player
  int score;     // this will be the score of the player
  int completed;  // total numbers completed
  int forfeited;  // number of scores the user rejected or time ran out
  int playerId;   // this will be the unique player id of each player


  PlayersModel({
    required this.name,
    required this.completed,
    required this.forfeited,
    required this.score,
    required this.playerId,
  });
}