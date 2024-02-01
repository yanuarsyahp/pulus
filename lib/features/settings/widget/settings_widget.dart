// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pulus/data/app_color.dart';

class SettingButton extends StatefulWidget {
  final String image;
  final String text;
  final bool icon;
  final double sizeImage;
  const SettingButton(
      {Key? key,
      required this.image,
      required this.text,
      required this.icon,
      required this.sizeImage})
      : super(key: key);

  @override
  State<SettingButton> createState() => _SettingButtonState();
}

class _SettingButtonState extends State<SettingButton> {
  @override
  Widget build(BuildContext context) {
    String Images = widget.image;
    String buttonText = widget.text;
    bool buttonIcon = widget.icon;
    double sizeImage = widget.sizeImage;
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        padding: EdgeInsets.fromLTRB(17, 5, 17, 5),
        margin: EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: Offset(0, 3))
            ]),
        child: Row(
          children: [
            Image.asset(
              Images,
              scale: sizeImage,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              buttonText,
              style: TextStyle(fontSize: 14),
            ),
            Spacer(),
            buttonIcon
                ? Icon(
                    Icons.navigate_next,
                    color: AppColor.primaryColor,
                  )
                : SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
