import 'package:flutter/material.dart';

class ScoutDisplayScreen extends StatefulWidget {
  const ScoutDisplayScreen({super.key});

  @override
  State<ScoutDisplayScreen> createState() => _ScoutDisplayState();
}

class _ScoutDisplayState extends State<ScoutDisplayScreen> {
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
