import 'package:flutter/material.dart';
import 'package:food_ninja/views/screens/onboard/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToOnboard();
  }

  goToOnboard() async {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset('assets/images/bg.png'),
          ),
          Positioned(
            top: 272,
            left: 100,
            child: Image.asset(
              'assets/images/Logo.png',
              width: 188,
              height: 203,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
