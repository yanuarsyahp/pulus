// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:pulus/features/shop/model/nonOrganik.dart';
import 'package:pulus/features/shop/widget/noWasteType_widget.dart';

class NoWasteType extends StatefulWidget {
  const NoWasteType({super.key});

  @override
  State<NoWasteType> createState() => _NoWasteTypeState();
}

class _NoWasteTypeState extends State<NoWasteType> {
  @override
  Widget build(BuildContext context) {
    List _nonOrganikTabs = [
      ["assets/images/botol.png", "Botol", "1.700"],
      ["assets/images/cup.png", "Cup", "1.700"],
      ["assets/images/kalengsoda.png", "Kaleng Soda", "15.000"],
      ["assets/images/kalengtebal.png", "Kaleng Tebal", "2.500"],
      ["assets/images/karton.png", "Karton", "500"],
      ["assets/images/kardus.png", "Kardus", "1.500"],
      ["assets/images/besi.png", "Besi", "5.000"],
      ["assets/images/plastik.png", "Plastik", "1.000"],
    ];

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
      body: GridView.builder(
          itemCount: _nonOrganikTabs.length,
          padding: EdgeInsets.all(12),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 1 / 1.4),
          itemBuilder: (context, index) {
            return NoCard(
                img: _nonOrganikTabs[index][0],
                title: _nonOrganikTabs[index][1],
                price: _nonOrganikTabs[index][2]);
          }),
    );
  }
}
