import 'package:flutter/material.dart';
import 'package:scouting_app_2023/scout_home.dart';

class ScoutQuestionScreen extends StatefulWidget {
  const ScoutQuestionScreen({super.key});

  @override
  State<ScoutQuestionScreen> createState() => _ScoutQuestionState();
}

class _ScoutQuestionState extends State<ScoutQuestionScreen> {
  static const backgroundColor = Color(0xFF1E1D1D);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: backgroundColor,
          child: Column(
            children: [
              const SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ScoutHomeScreen()),
                        );
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Color(0xFFF4F6F4),
                        size: 20,
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 47,
                    margin: EdgeInsets.all(10),
                    // color: Colors.white,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF1fd655),
                            Color(0xFF39e75f),
                            Color(0xFF5ced73),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
