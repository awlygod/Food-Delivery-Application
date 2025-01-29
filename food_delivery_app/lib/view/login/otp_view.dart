import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/view/login/new_password_view.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Text(
                "We have sent an OTP to your mobile",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Please check your mobile number +91-98******36\n& continue to reset your password",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 55,
              ),
              OtpPinField(
                key: _otpPinFieldController,

                /// in case you want to enable autoFill
                autoFillEnable: false,

                /// for iOS it is not needed as the SMS autofill is provided by default, but not for Android, that's where this key is useful.
                textInputAction: TextInputAction.done,

                /// in case you want to change the action of keyboard
                /// to clear the Otp pin Controller
                onSubmit: (newCode) {
                  FocusScope.of(context).requestFocus(FocusNode());

                  /// return the entered pin
                },
                onChange: (text) {
                  //print('Enter on change pin is $text');

                  /// return the entered pin
                },
                onCodeChanged: (code) {
                  //print('onCodeChanged is $code');
                },

                /// to decorate your Otp_Pin_Field
                otpPinFieldStyle: OtpPinFieldStyle(
                  /// border color for inactive/unfocused Otp_Pin_Field
                  defaultFieldBackgroundColor: Colors.white,

                  /// Background Color for active/focused Otp_Pin_Field
                  activeFieldBackgroundColor: Colors.white,

                  /// gradient border Color for field pin box
                  activeFieldBorderColor: TColor.primary,
                  defaultFieldBorderColor: TColor.secondaryText,
                  fieldBorderWidth: 3,
                ),
                maxLength: 4,

                /// no of pin field
                showCursor: true,

                /// bool to show cursor in pin field or not
                cursorColor: Colors.indigo,

                /// to choose cursor color
                upperChild: const Column(
                  children: [
                    SizedBox(height: 30),
                    Icon(Icons.flutter_dash_outlined, size: 150),
                    SizedBox(height: 20),
                  ],
                ),

                /// bool which manage to show custom keyboard
                showCustomKeyboard: false,

                /// Widget which help you to show your own custom keyboard in place if default custom keyboard
                // customKeyboard: Container(),
                /// bool which manage to show default OS keyboard
                // showDefaultKeyboard: true,

                /// to select cursor width
                cursorWidth: 3,

                /// place otp pin field according to yourself
                mainAxisAlignment: MainAxisAlignment.center,

                /// predefine decorate of pinField use OtpPinFieldDecoration.defaultPinBoxDecoration || OtpPinFieldDecoration.underlinedPinBoxDecoration || OtpPinFieldDecoration.roundedPinBoxDecoration
                /// use OtpPinFieldDecoration.custom (by using this you can make Otp_Pin_Field according to yourself like you can give fieldBorderRadius, fieldBorderWidth and etc things)
                otpPinFieldDecoration:
                    OtpPinFieldDecoration.defaultPinBoxDecoration,
              ),
              const SizedBox(
                height: 25,
              ),
              RoundButton(
                title: "Next",
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
              ),
              TextButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const SignUpView()));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Didn't Receive?",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      " Click here",
                      style: TextStyle(
                        color: TColor.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
