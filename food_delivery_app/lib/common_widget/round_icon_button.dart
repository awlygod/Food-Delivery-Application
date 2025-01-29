import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoundIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final String icon;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  const RoundIconButton({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.onPressed,
    this.fontSize = 12,
    this.fontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(25)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              icon,
              width: 18,
              height: 18,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: fontSize,
                  fontWeight: fontWeight),
            ),
          ],
        ),
      ),
    );
  }
}
