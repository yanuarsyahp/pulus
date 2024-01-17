import 'package:flutter/material.dart';
import 'package:pulus/features/auth/sign%20in/screen/signIn_view.dart';
import 'package:pulus/features/auth/sign%20up/screen/signUp_view.dart';
import 'package:pulus/features/home/screen/bottomNav.dart';
import 'package:pulus/features/home/screen/home_view.dart';
import 'package:pulus/features/onboarding/screen/onboarding_view.dart';

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
        body: BottomNav(),
      ),
    );
  }
}
