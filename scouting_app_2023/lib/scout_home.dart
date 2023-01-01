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
      floatingActionButton: Container(
        height: 80,
        width: 80,

        // decoration: BoxDecoration(
        //   borderRadius: 100
        // ),
        child: FloatingActionButton(
          backgroundColor: Color(0xFF0D0C0C),
          child: Icon(
            Icons.add_to_photos_rounded,
            color: Color(0xFFE1F576),
            size: 40,
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFF0D0C0C),
        elevation: 10,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(children: [
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.paste_rounded,
                      color: Color(0xFFE1F576),
                    ),
                    Text(
                      'Scout',
                      style: TextStyle(
                        color: Color(0xFFE1F576),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                child: Container(color: Color(0xFF0D0C0C)),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.add_to_drive_rounded,
                      color: Color(0xFFF4F6F4),
                    ),
                    Text(
                      'Sync',
                      style: TextStyle(
                        color: Color(0xFFF4F6F4),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
