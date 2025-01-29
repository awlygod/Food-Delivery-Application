import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';

class CategoryCell extends StatelessWidget {
  const CategoryCell({super.key, required this.cObj, required this.onTap});
  final Map cObj;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                cObj["image"].toString(),
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Text(
              cObj["name"],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: TColor.primaryText,
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
