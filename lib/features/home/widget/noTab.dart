// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';

class NonOrganikTab extends StatelessWidget {
  final String imagePath;
  final String title;
  const NonOrganikTab(
      {super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(0, 5),
                  blurRadius: 3,
                  spreadRadius: 1,
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Image.asset(
              imagePath,
              height: 50,
              width: 50,
            ),
          ),
        ),
        SizedBox(
          height: Height * 0.02,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
