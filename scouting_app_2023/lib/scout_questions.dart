import 'package:flutter/material.dart';

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
        ),
      ),
    );
  }
}
