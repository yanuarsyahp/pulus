// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:pulus/features/home/screen/bottomNav.dart';

class OWasteType extends StatefulWidget {
  const OWasteType({super.key});

  @override
  State<OWasteType> createState() => _OWasteTypeState();
}

class _OWasteTypeState extends State<OWasteType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => BottomNav()));
          },
        ),
        title: Text(
          'JENIS SAMPAH',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
