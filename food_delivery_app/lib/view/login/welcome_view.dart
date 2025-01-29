import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/view/login/login_view.dart';
import 'package:food_delivery_app/view/login/sign_up_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                "assets/imgs/welcome_top_shape.png",
              ),
              Image.asset(
                "assets/imgs/app_logo.png",
                width: media.width * 0.4,
                height: media.height * 0.4,
                fit: BoxFit.contain,
              ),
            ],
          ),
          SizedBox(height: media.width * 0.1),
          Transform.translate(
            offset: Offset(0, -90), // Move the text 50 pixels down
            child: Align(
              alignment:
                  Alignment.center, // Keep the text centered horizontally
              child: Text(
                "Discover the best foods from 100s of\nrestaurants around your home and\nexperience the fast delivery at you\ndoorsteps",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                title: "Login",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginView(),
                    ),
                  );
                },
              )),
          SizedBox(height: media.width * 0.05),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                title: "Create Account",
                type: RoundButtonType.textPrimary,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpView(),
                    ),
                  );
                },
              )),
        ],
      ),
    );
  }
}
