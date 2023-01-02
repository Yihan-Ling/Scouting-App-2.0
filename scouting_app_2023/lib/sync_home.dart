import 'package:flutter/material.dart';

class SyncHomeScreen extends StatefulWidget {
  const SyncHomeScreen({super.key});

  @override
  State<SyncHomeScreen> createState() => _SyncHomeState();
}

class _SyncHomeState extends State<SyncHomeScreen> {
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
