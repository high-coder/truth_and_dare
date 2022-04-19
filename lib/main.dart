import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:truth_and_dare/providers/currentState.dart';
import 'package:truth_and_dare/screens/current_score.dart';
import 'package:truth_and_dare/screens/home/our_home.dart';
import 'package:truth_and_dare/screens/turn_page.dart';


void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => CurrentState())
    ],child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TurnPage(),
    ),);
  }
}
