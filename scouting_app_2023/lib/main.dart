import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Scouting App',
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    var backgroundImg = const AssetImage("images/home_background.jpg");
    var launchButton = const AssetImage("images/launch_button_background.jpg");
    const backgroundColor = Color(0xFF1E1D1D);
    return Scaffold(
      body: Center(
        // Background
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    //Background Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: backgroundImg,
                        width: double.infinity,
                      ),
                    ),
                    //Center Cirle & Icon
                    Positioned(
                      bottom: -39,
                      child: Container(
                        width: 172,
                        height: 172,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.red,
                              Colors.blue,
                            ],
                          ),
                        ),
                        child: const Icon(
                          Icons.cloud_upload_outlined,
                          color: Color(0xFFE1F576),
                          size: 91,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Container(
                    //   color: Colors.red,
                    //   width: 100,
                    //   height: 200,
                    // ),
                    GestureDetector(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 287,
                            height: 131,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black,
                              image: DecorationImage(
                                image: launchButton,
                                fit: BoxFit.cover,
                              ),
                              // child: Text("clickMe") // button text
                            ),
                          ),
                          const Text(
                            "Launch",
                            style: TextStyle(
                              fontFamily: 'SpaceGrotesk',
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0, // shadow blur
                                  color: Colors.grey, // shadow color
                                  offset: Offset(3.0,
                                      3.0), // how much shadow will be shown
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        print("you clicked me");
                      },
                    ),
                  ],
                ),
              ),
              //Launch Button
            ],
          ),
        ),
      ),
    );
  }
}
