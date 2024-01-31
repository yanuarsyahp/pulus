// ignore_for_file: prefer_const_constructors, file_names, prefer_final_fields

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pulus/data/app_color.dart';
import 'package:pulus/database/db_helper.dart';
import 'package:pulus/features/shop/model/cart_model.dart';
import 'package:pulus/features/shop/model/cart_provider.dart';
import 'package:pulus/features/shop/widget/noWaste_widget.dart';

class NoWasteType extends StatefulWidget {
  const NoWasteType({super.key});

  @override
  State<NoWasteType> createState() => _NoWasteTypeState();
}

class _NoWasteTypeState extends State<NoWasteType> {
  // DBHelper dbHelper = DBHelper();

  List _nonOrganikTabs = [
    ["assets/images/botol.png", "Botol", 1.700],
    ["assets/images/cup.png", "Cup", 1.700],
    ["assets/images/kalengsoda.png", "Kaleng Soda", 15.000],
    ["assets/images/kalengtebal.png", "Kaleng Tebal", 2.500],
    ["assets/images/karton.png", "Karton", 0.500],
    ["assets/images/kardus.png", "Kardus", 1.500],
    ["assets/images/besi.png", "Besi", 5.000],
    ["assets/images/plastik.png", "Plastik", 1.000],
  ];

  @override
  Widget build(BuildContext context) {
    // final cart = Provider.of<CartProvider>(context);
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NoWidget(
                            img: _nonOrganikTabs[0][0],
                            name: _nonOrganikTabs[0][1],
                            price: _nonOrganikTabs[0][2],
                            isClicked: false),
                        NoWidget(
                            img: _nonOrganikTabs[1][0],
                            name: _nonOrganikTabs[1][1],
                            price: _nonOrganikTabs[1][2],
                            isClicked: false),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NoWidget(
                            img: _nonOrganikTabs[2][0],
                            name: _nonOrganikTabs[2][1],
                            price: _nonOrganikTabs[2][2],
                            isClicked: false),
                        NoWidget(
                            img: _nonOrganikTabs[3][0],
                            name: _nonOrganikTabs[3][1],
                            price: _nonOrganikTabs[3][2],
                            isClicked: false),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NoWidget(
                            img: _nonOrganikTabs[4][0],
                            name: _nonOrganikTabs[4][1],
                            price: _nonOrganikTabs[4][2],
                            isClicked: false),
                        NoWidget(
                            img: _nonOrganikTabs[5][0],
                            name: _nonOrganikTabs[5][1],
                            price: _nonOrganikTabs[5][2],
                            isClicked: false),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NoWidget(
                            img: _nonOrganikTabs[2][0],
                            name: _nonOrganikTabs[2][1],
                            price: _nonOrganikTabs[2][2],
                            isClicked: false),
                        NoWidget(
                            img: _nonOrganikTabs[3][0],
                            name: _nonOrganikTabs[3][1],
                            price: _nonOrganikTabs[3][2],
                            isClicked: false),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // body: GridView.builder(
      //     itemCount: _nonOrganikTabs.length,
      //     padding: EdgeInsets.all(12),
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 2,
      //         crossAxisSpacing: 8.0,
      //         mainAxisSpacing: 8.0,
      //         childAspectRatio: 1 / 1.4),
      //     itemBuilder: (context, index) {
      //       return Card(
      //         elevation: 3,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(15)),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Center(
      //               child: Padding(
      //                 padding: const EdgeInsets.fromLTRB(0, 24, 0, 20),
      //                 child: Image.asset(
      //                   _nonOrganikTabs[index][0],
      //                   height: 125, // Sesuaikan tinggi gambar sesuai kebutuhan
      //                 ),
      //               ),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.symmetric(horizontal: 14),
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Text(
      //                     _nonOrganikTabs[index][1].toString(),
      //                     style: TextStyle(fontSize: 14),
      //                   ),
      //                   _clicked == !false
      //                       ? Row(
      //                           mainAxisAlignment:
      //                               MainAxisAlignment.spaceBetween,
      //                           children: [
      //                             IconButton(
      //                                 onPressed: () {
      //                                   setState(() {
      //                                     _clicked = false;
      //                                   });
      //                                 },
      //                                 icon: Icon(
      //                                   Icons.remove_circle,
      //                                   color: AppColor.newRed,
      //                                   size: 28,
      //                                 )),
      //                             Text(_nonOrganikTabs[index][2].toString()),
      //                             IconButton(
      //                                 onPressed: () {},
      //                                 icon: Icon(
      //                                   Icons.add_circle,
      //                                   color: AppColor.primaryColor,
      //                                   size: 28,
      //                                 ))
      //                           ],
      //                         )
      //                       : Row(
      //                           mainAxisAlignment:
      //                               MainAxisAlignment.spaceBetween,
      //                           children: [
      //                             Row(
      //                               children: [
      //                                 Image.asset(
      //                                   'assets/images/coin.png',
      //                                   height: 20,
      //                                   width: 20,
      //                                 ),
      //                                 Text(
      //                                   '  Rp${_nonOrganikTabs[index][2].toString()}/kg',
      //                                   style: TextStyle(
      //                                       fontSize: 12,
      //                                       fontWeight: FontWeight.bold),
      //                                 ),
      //                               ],
      //                             ),
      //                             IconButton(
      //                                 onPressed: () {
      //                                   print('clicked');
      //                                   setState(() {
      //                                     _clicked = true;
      //                                   });
      //                                 },
      //                                 icon: Icon(
      //                                   Icons.add_box_rounded,
      //                                   color: AppColor.primaryColor,
      //                                   size: 28,
      //                                 ))
      //                           ],
      //                         )
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       );
      //     }),
    );
  }
}
