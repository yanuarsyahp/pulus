// ignore_for_file: non_constant_identifier_names, unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pulus/data/app_color.dart';

class NoCard extends StatefulWidget {
  final String img;
  final String title;
  final String price;
  const NoCard(
      {super.key, required this.img, required this.title, required this.price});

  @override
  State<NoCard> createState() => _NoCardState();
}

class _NoCardState extends State<NoCard> {
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 24, 0, 20),
              child: Image.asset(
                widget.img,
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
                  widget.title,
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
                          '  Rp${widget.price}/kg',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
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
  }
}
