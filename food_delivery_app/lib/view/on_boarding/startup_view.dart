import 'package:flutter/material.dart';
import 'package:food_delivery_app/view/login/welcome_view.dart';

class StartupView extends StatefulWidget {
  const StartupView({super.key});
  @override
  State<StartupView> createState() => _StartupVewState();
}

class _StartupVewState extends State<StartupView> {
  @override
  void initState() {
    super.initState();
    goWelcomePage();
  }

  void goWelcomePage() async {
    await Future.delayed(const Duration(seconds: 3));
    welcomePage();
  }

  void welcomePage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const WelcomeView()));
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/imgs/splash_bg.png",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/imgs/app_logo.png",
            width: media.width * 0.5,
            height: media.height * 0.5,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}
