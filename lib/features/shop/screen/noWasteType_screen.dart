// ignore_for_file: prefer_const_constructors, file_names, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pulus/data/app_color.dart';
import 'package:pulus/database/db_helper.dart';
import 'package:pulus/features/shop/model/cart_model.dart';
import 'package:pulus/features/shop/model/cart_provider.dart';

class NoWasteType extends StatefulWidget {
  const NoWasteType({super.key});

  @override
  State<NoWasteType> createState() => _NoWasteTypeState();
}

class _NoWasteTypeState extends State<NoWasteType> {
  DBHelper dbHelper = DBHelper();

  List _nonOrganikTabs = [
    ["assets/images/botol.png", "Botol", 1.700],
    ["assets/images/cup.png", "Cup", 1.700],
    ["assets/images/kalengsoda.png", "Kaleng Soda", 15.000],
    ["assets/images/kalengtebal.png", "Kaleng Tebal", 2.500],
    ["assets/images/karton.png", "Karton", 500],
    ["assets/images/kardus.png", "Kardus", 1.500],
    ["assets/images/besi.png", "Besi", 5.000],
    ["assets/images/plastik.png", "Plastik", 1.000],
  ];

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
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
            return Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 24, 0, 20),
                      child: Image.asset(
                        _nonOrganikTabs[index][0],
                        height: 125, // Sesuaikan tinggi gambar sesuai kebutuhan
                      ),
                    ),
                  ),
                  // SizedBox(height: Height * 0.001),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _nonOrganikTabs[index][1].toString(),
                          style: TextStyle(fontSize: 14),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/coin.png',
                                  height: 20,
                                  width: 20,
                                ),
                                Text(
                                  '  Rp${_nonOrganikTabs[index][2].toString()}/kg',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {
                                  dbHelper
                                      .insert(Cart(
                                          id: index,
                                          productId: index.toString(),
                                          productName: _nonOrganikTabs[index]
                                              [1],
                                          initialPrice: _nonOrganikTabs[index]
                                              [2],
                                          productPrice: _nonOrganikTabs[index]
                                              [2],
                                          quantity: 1,
                                          image: _nonOrganikTabs[index][0]))
                                      .then((value) {
                                    print('Product is Added to cart');
                                    cart.addTotalPrice(double.parse(
                                        _nonOrganikTabs[index][2].toString()));
                                    cart.addCounter();
                                  }).onError((error, stackTrace) {
                                    print(error.toString());
                                  });
                                },
                                icon: Icon(
                                  Icons.add_box_rounded,
                                  color: AppColor.primaryColor,
                                  size: 28,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
