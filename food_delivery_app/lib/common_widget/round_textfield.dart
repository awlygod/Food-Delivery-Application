import 'package:food_delivery_app/common/color_extension.dart';
import 'package:flutter/material.dart';

class RoundTextfield extends StatelessWidget {
  const RoundTextfield({
    super.key,
    this.controller,
    required this.hinttext,
    this.keyboardType,
    this.obscureText = false,
    this.bgColor,
    this.left,
  });

  final TextEditingController? controller;
  final String hinttext;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Color? bgColor;
  final Widget? left;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: TColor.textfield, borderRadius: BorderRadius.circular(18)),
      child: Row(
        children: [
          if (left != null)
            const Padding(
              padding: EdgeInsets.only(
                left: 12,
              ),
            ),
          Expanded(
            child: TextField(
              autocorrect: false,
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                prefixIcon: left,
                hintText: hinttext,
                hintStyle: TextStyle(
                  color: TColor.placeholder,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
