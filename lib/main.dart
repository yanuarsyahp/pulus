import 'package:flutter/material.dart';
import 'package:pulus/features/home/screen/bottomNav.dart';
import 'package:pulus/features/onboarding/screen/onboarding_view.dart';
import 'package:pulus/features/shop/screen/noWasteType.dart';
import 'package:pulus/features/shop/screen/oWasteType.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: NoWasteType(),
      ),
    );
  }
}
