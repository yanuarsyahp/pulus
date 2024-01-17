// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pulus/data/app_color.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        height: isActive ? 6 : 6,
        width: 6,
        decoration: BoxDecoration(
            color: isActive
                ? AppColor.primaryColor
                : AppColor.primaryColor.withOpacity(0.4),
            borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
    );
  }
}
