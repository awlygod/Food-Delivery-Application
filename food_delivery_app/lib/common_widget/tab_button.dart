import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
    required this.icon,
  });

  final VoidCallback onTap;
  final String title;
  final bool isSelected;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            icon,
            width: 15,
            height: 15,
            color: isSelected ? TColor.primary : TColor.placeholder,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            title,
            style: TextStyle(
              color: isSelected ? TColor.primary : TColor.placeholder,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
