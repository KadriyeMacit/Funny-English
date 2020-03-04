import 'package:flutter/material.dart';
import 'package:funny_english/game_pages/start.dart';
import 'package:funny_english/services/provider.dart';

void main() {
  setupLocator();
  runApp(Oyun());
}


class Oyun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}