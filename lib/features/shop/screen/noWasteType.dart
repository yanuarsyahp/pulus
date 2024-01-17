// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class NoWasteType extends StatefulWidget {
  const NoWasteType({super.key});

  @override
  State<NoWasteType> createState() => _NoWasteTypeState();
}

class _NoWasteTypeState extends State<NoWasteType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        title: Text(
          'JENIS SAMPAH',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
