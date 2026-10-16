// Karim Toson || kareemtoson1@gmail.com || Fri Oct 16 2026 17:52:59

import 'package:flutter/material.dart';
import 'package:nti7/core/colors_manger.dart';
import 'package:nti7/core/styels_maanger.dart';

class GenederCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final Function() ontap;

  const GenederCard({
    super.key,
    required this.icon,
    required this.title,
    required this.isSelected,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: isSelected
                ? ColorsManger.secColor
                : Colors.grey.withValues(alpha: 0.3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Icon(icon, color: Colors.white, size: 80),
              Text(
                title,
                style: StyelsMaanger.whiteBold30.copyWith(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
