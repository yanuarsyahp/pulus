// ignore_for_file: prefer_const_constructors, file_names, prefer_final_fields, prefer_const_literals_to_create_immutables

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

  bool botolIsClicked = false;
  bool cupIsClicked = false;
  bool kalengSodaIsClicked = false;
  bool kalengTebalIsClicked = false;
  bool kartonIsClicked = false;
  bool kardusIsClicked = false;
  bool besiIsClicked = false;
  bool plastikIsClicked = false;

  double beratTotal = 0.0;

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
                          isClicked: botolIsClicked,
                          addOnPressed: () {
                            setState(() {
                              botolIsClicked = !false;
                              beratTotal = beratTotal + _nonOrganikTabs[0][2];
                              print(beratTotal.toStringAsFixed(1));
                            });
                          },
                          removeOnPressed: () {
                            setState(() {
                              beratTotal = beratTotal - _nonOrganikTabs[0][2];
                              beratTotal < 0.0
                                  ? botolIsClicked = false
                                  : botolIsClicked = !false;
                              print(beratTotal.toStringAsFixed(1));
                            });
                          },
                        ),
                        //     NoWidget(
                        //       img: _nonOrganikTabs[1][0],
                        //       name: _nonOrganikTabs[1][1],
                        //       price: _nonOrganikTabs[1][2],
                        //       isClicked: cupIsClicked,
                        //       onPressed: () {
                        //         setState(() {
                        //           cupIsClicked = !cupIsClicked;
                        //         });
                        //       },
                        //     ),
                        //   ],
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     NoWidget(
                        //       img: _nonOrganikTabs[2][0],
                        //       name: _nonOrganikTabs[2][1],
                        //       price: _nonOrganikTabs[2][2],
                        //       isClicked: kalengSodaIsClicked,
                        //       onPressed: () {
                        //         setState(() {
                        //           kalengSodaIsClicked = !kalengSodaIsClicked;
                        //         });
                        //       },
                        //     ),
                        //     NoWidget(
                        //       img: _nonOrganikTabs[3][0],
                        //       name: _nonOrganikTabs[3][1],
                        //       price: _nonOrganikTabs[3][2],
                        //       isClicked: kalengTebalIsClicked,
                        //       onPressed: () {
                        //         setState(() {
                        //           kalengTebalIsClicked = !kalengTebalIsClicked;
                        //         });
                        //       },
                        //     ),
                        //   ],
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     NoWidget(
                        //       img: _nonOrganikTabs[4][0],
                        //       name: _nonOrganikTabs[4][1],
                        //       price: _nonOrganikTabs[4][2],
                        //       isClicked: kartonIsClicked,
                        //       onPressed: () {
                        //         setState(() {
                        //           kardusIsClicked = !kardusIsClicked;
                        //         });
                        //       },
                        //     ),
                        //     NoWidget(
                        //       img: _nonOrganikTabs[5][0],
                        //       name: _nonOrganikTabs[5][1],
                        //       price: _nonOrganikTabs[5][2],
                        //       isClicked: kardusIsClicked,
                        //       onPressed: () {
                        //         setState(() {
                        //           kardusIsClicked = !kardusIsClicked;
                        //         });
                        //       },
                        //     ),
                        //   ],
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     NoWidget(
                        //       img: _nonOrganikTabs[6][0],
                        //       name: _nonOrganikTabs[6][1],
                        //       price: _nonOrganikTabs[6][2],
                        //       isClicked: besiIsClicked,
                        //       onPressed: () {
                        //         setState(() {
                        //           besiIsClicked = !besiIsClicked;
                        //         });
                        //       },
                        //     ),
                        //     NoWidget(
                        //       img: _nonOrganikTabs[7][0],
                        //       name: _nonOrganikTabs[7][1],
                        //       price: _nonOrganikTabs[7][2],
                        //       isClicked: plastikIsClicked,
                        //       onPressed: () {
                        //         setState(() {
                        //           plastikIsClicked = !plastikIsClicked;
                        //         });
                        //       },
                        //     ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            botolIsClicked == false &&
                    cupIsClicked == false &&
                    kalengSodaIsClicked == false &&
                    kalengTebalIsClicked == false &&
                    kartonIsClicked == false &&
                    kardusIsClicked == false &&
                    besiIsClicked == false &&
                    plastikIsClicked == false
                ? Container()
                : Padding(
                    padding: const EdgeInsets.fromLTRB(4, 20, 20, 4),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text('Berat total')],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text('Total uang'), Text('Rp5.100')],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Divider(),
                        SizedBox(
                          height: 6,
                        ),
                        Row(),
                      ],
                    ),
                  )
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
