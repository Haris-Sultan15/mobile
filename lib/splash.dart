import 'package:flutter/material.dart';
import 'index.dart';
import 'welcome.dart'; 
import 'location.dart';// Ensure you have a HomeScreen widget in home_screen.dart

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LocationPermissionScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white, // Set background color to white
        child: Center(
          child: Image.asset('assests/img/health-icon.png', width: 200, height: 200,),
          // Your splash icon
        ),
      ),
    );
  }
}
