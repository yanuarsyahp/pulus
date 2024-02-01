// ignore_for_file: prefer_const_constructors, avoid_print, sized_box_for_whitespace, prefer_interpolation_to_compose_strings, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pulus/data/app_color.dart';

class WasteWidget extends StatefulWidget {
  final String img;
  final String name;
  final double kg;
  final double price;
  bool isClicked;
  final VoidCallback addOnPressed;
  final VoidCallback removeOnPressed;
  WasteWidget({
    Key? key,
    required this.img,
    required this.name,
    required this.kg,
    required this.price,
    required this.isClicked,
    required this.addOnPressed,
    required this.removeOnPressed,
  }) : super(key: key);

  @override
  State<WasteWidget> createState() => _WasteWidgetState();
}

class _WasteWidgetState extends State<WasteWidget> {
  double beratItem = 0.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 178,
          child: Card(
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Image.asset(
                      widget.img,
                      height: 125, // Sesuaikan tinggi gambar sesuai kebutuhan
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(fontSize: 14),
                      ),
                      widget.isClicked == !false
                          ? Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        widget.removeOnPressed();
                                        beratItem = beratItem - widget.kg;
                                      });
                                    },
                                    child: Icon(
                                      Icons.remove_circle,
                                      color: AppColor.newRed,
                                      size: 28,
                                    ),
                                  ),
                                  Text(
                                    beratItem.toStringAsFixed(1) + ' kg',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        widget.addOnPressed();
                                        beratItem = beratItem + widget.kg;
                                      });
                                    },
                                    child: Icon(Icons.add_circle,
                                        color: AppColor.primaryColor, size: 28),
                                  ),
                                ],
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/coin.png',
                                        height: 20,
                                        width: 20,
                                      ),
                                      Text(
                                        '  Rp${widget.price.toStringAsFixed(3)}/kg',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        widget.addOnPressed();
                                        beratItem = widget.kg;
                                      });
                                    },
                                    child: Icon(
                                      Icons.add_box_rounded,
                                      color: AppColor.primaryColor,
                                      size: 28,
                                    ),
                                  ),
                                ],
                              ),
                            )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
