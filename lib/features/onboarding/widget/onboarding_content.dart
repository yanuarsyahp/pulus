// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OnboaringContent extends StatefulWidget {
  const OnboaringContent({
    Key? key,
    required this.image,
    required this.title,
    required this.desc,
  }) : super(key: key);

  final String image, title, desc;

  @override
  State<OnboaringContent> createState() => _OnboaringContentState();
}

class _OnboaringContentState extends State<OnboaringContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 64,
        ),
        Image.asset(
          widget.image,
          height: 300,
        ),
        SizedBox(height: 28),
        Text(
          widget.title,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          widget.desc,
          textAlign: TextAlign.center,
          style: TextStyle(height: 1.6),
        ),
      ],
    );
  }
}
