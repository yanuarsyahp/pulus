// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pulus/data/app_color.dart';

class NoWidget extends StatefulWidget {
  final String img;
  final String name;
  final double price;
  bool isClicked;
  final VoidCallback addOnPressed;
  final VoidCallback removeOnPressed;
  NoWidget(
      {Key? key,
      required this.img,
      required this.name,
      required this.price,
      required this.isClicked,
      required this.addOnPressed,
      required this.removeOnPressed})
      : super(key: key);

  @override
  State<NoWidget> createState() => _NoWidgetState();
}

class _NoWidgetState extends State<NoWidget> {
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
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        widget.isClicked = !widget.isClicked;
                                        widget.removeOnPressed();
                                      });
                                    },
                                    icon: Icon(
                                      Icons.remove_circle,
                                      color: AppColor.newRed,
                                      size: 28,
                                    )),
                                Text(widget.price.toString()),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        widget.addOnPressed();
                                      });
                                    },
                                    icon: Icon(
                                      Icons.add_circle,
                                      color: AppColor.primaryColor,
                                      size: 28,
                                    ))
                              ],
                            )
                          : Row(
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
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                IconButton(
                                    onPressed: () {
                                      print('clicked');
                                      setState(() {
                                        widget.addOnPressed();
                                      });
                                    },
                                    icon: Icon(
                                      Icons.add_box_rounded,
                                      color: AppColor.primaryColor,
                                      size: 28,
                                    ))
                              ],
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
