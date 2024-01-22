// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:pulus/features/shop/model/nonOrganik.dart';

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
      body: GridView.builder(
          itemCount: NonOrganikItems.nonOrganikItems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
          itemBuilder: (BuildContext context, int index) {
            NonOrganik nonOrganik = NonOrganikItems.nonOrganikItems[index];
            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image.asset(
                  //   nonOrganik.img,
                  //   height: 80.0, // Sesuaikan tinggi gambar sesuai kebutuhan
                  // ),
                  SizedBox(height: 8.0),
                  Text(
                    nonOrganik.title,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    nonOrganik.price.toStringAsFixed(3),
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
