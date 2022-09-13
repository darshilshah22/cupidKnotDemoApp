import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:demoapp/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: DefaultTextStyle(
              textAlign: TextAlign.center,
              style: GoogleFonts.robotoMono(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
              child: AnimatedTextKit(
                  isRepeatingAnimation: false,
                  onFinished: () {
                    Future.delayed(const Duration(milliseconds: 50), () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                          (route) => false);
                    });
                  },
                  animatedTexts: [
                    TyperAnimatedText("Welcome To\nOur App",
                        speed: const Duration(milliseconds: 80),
                        textAlign: TextAlign.center)
                  ]))),
    );
  }
}
