// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pulus/features/shop/model/cart_provider.dart';
import 'package:pulus/features/shop/screen/noWasteType_screen.dart';

class WasteTypeScreen extends StatelessWidget {
  const WasteTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: Builder(builder: (BuildContext context) {
        return MaterialApp(
          home: NoWasteType(),
        );
      }),
    );
  }
}
