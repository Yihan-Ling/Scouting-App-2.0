// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// void main() {
//   runApp(const ScoutHome());
// }

// class ScoutHome extends StatelessWidget {
//   const ScoutHome({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Scouting Home Screen',
//     );
//   }
// }

class ScoutHomeScreen extends StatefulWidget {
  const ScoutHomeScreen({super.key});

  @override
  State<ScoutHomeScreen> createState() => _ScoutHomeState();
}

class _ScoutHomeState extends State<ScoutHomeScreen> {
  static const backgroundColor = Color(0xFF1E1D1D);
  var backgroundImg = const AssetImage("images/scout_card_background.jpeg");
  _cardBackground() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image(
        image: backgroundImg,
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }

  _teamName(String name) {
    return Text(
      name,
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
      ),
    );
  }

  _teamNamesCol(List<String> names) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Red",
            style: TextStyle(
              color: Color(0xFFDF2935),
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontFamily: 'Inter',
            ),
          ),
          _teamName(names[0]),
          _teamName(names[1]),
          _teamName(names[2]),
        ],
      ),
    );
  }

  _matchNum(String matchName) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            matchName,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w600,
              fontFamily: 'Inter',
            ),
          ),
        ],
      ),
    );
  }

  _scoutCard() {
    return Container(
      width: 372,
      height: 181,
      child: Stack(
        alignment: Alignment.center,
        children: [
          //Background Image
          _cardBackground(),
          //Row
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _teamNamesCol(["7407", "6106", "168"]),
                _matchNum("Quals 1"),
                _teamNamesCol(["2864", "1461", "5764"]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _scoutCard(),
              _scoutCard(),
              _scoutCard(),
              _scoutCard(),
            ],
          ),
        ),
      ),
    );
  }
}
