import 'package:flutter/material.dart';
import 'package:movies_app/main.dart';
import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainScreen()),
      );
    });

    return Scaffold(
      body: Center(
        child: Image.asset('assets/splash_image.jpg', fit: BoxFit.cover),
      ),
    );
  }
}
