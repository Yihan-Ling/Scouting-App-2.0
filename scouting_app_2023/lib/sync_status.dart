import 'package:flutter/material.dart';

class SyncStatusScreen extends StatefulWidget {
  const SyncStatusScreen({super.key});

  @override
  State<SyncStatusScreen> createState() => _SyncStatusState();
}

class _SyncStatusState extends State<SyncStatusScreen> {
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
