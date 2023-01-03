import 'package:flutter/material.dart';
import 'package:scouting_app_2023/scout_home.dart';
import 'package:scouting_app_2023/sync_status.dart';

class SyncHomeScreen extends StatefulWidget {
  const SyncHomeScreen({super.key});

  @override
  State<SyncHomeScreen> createState() => _SyncHomeState();
}

class _SyncHomeState extends State<SyncHomeScreen> {
  static const backgroundColor = Color(0xFF1E1D1D);

  _floatingNaviButton() {
    return Container(
      height: 80,
      width: 80,
      child: FloatingActionButton(
        backgroundColor: Color(0xFF0D0C0C),
        child: Icon(
          Icons.add_to_photos_rounded,
          color: Color(0xFFE1F576),
          size: 40,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SyncStatusScreen()),
          );
        },
      ),
    );
  }

  _buttomNaviBar() {
    return BottomAppBar(
      color: Color(0xFF0D0C0C),
      elevation: 10,
      shape: CircularNotchedRectangle(),
      child: Container(
        height: 60,
        child: Row(children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ScoutHomeScreen()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.paste_rounded,
                    color: Color(0xFFF4F6F4),
                  ),
                  Text(
                    'Scout',
                    style: TextStyle(
                      color: Color(0xFFF4F6F4),
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SyncHomeScreen()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.add_to_drive_rounded,
                    color: Color(0xFFE1F576),
                  ),
                  Text(
                    'Sync',
                    style: TextStyle(
                      color: Color(0xFFE1F576),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
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
        ),
      ),
      floatingActionButton: _floatingNaviButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buttomNaviBar(),
    );
  }
}
