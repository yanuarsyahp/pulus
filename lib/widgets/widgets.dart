// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:pulus/data/app_color.dart';

//REGULAR CUSTOM TEXTFIELD
class CustomTexfield extends StatelessWidget {
  final String newText;
  final String newHintText;
  final textController;

  const CustomTexfield(
      {super.key,
      required this.newHintText,
      required this.newText,
      this.textController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          newText,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          decoration: BoxDecoration(
            color: Color(0xffF1F1F1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: textController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: newHintText,
                  hintStyle: TextStyle(color: Color(0xff929292))),
            ),
          ),
        ),
      ],
    );
  }
}

//PRIVATE CUSTOM TEXTFIELD
class CustomPrivateTextField extends StatefulWidget {
  final newText;
  final newPrivHintText;
  final textController;

  const CustomPrivateTextField(
      {super.key,
      this.newPrivHintText,
      required this.newText,
      this.textController});

  @override
  State<CustomPrivateTextField> createState() => _CustomPrivateTextFieldState();
}

class _CustomPrivateTextFieldState extends State<CustomPrivateTextField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.newText,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
            decoration: BoxDecoration(
                color: Color(0xffF1F1F1),
                borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: widget.textController,
                obscureText: _obscureText,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: widget.newPrivHintText,
                    hintStyle: TextStyle(color: Color(0xff929292)),
                    suffixIcon: IconButton(
                      icon: Icon(_obscureText
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                    suffixIconColor: Colors.black),
              ),
            )),
      ],
    );
  }
}

//PRIMARY BUTTON
class PrimaryButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const PrimaryButton({super.key, required this.text, required this.onPressed});

  @override
  State<PrimaryButton> createState() => PrimaryButtonState();
}

class PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(120, 18, 120, 18),
        child: Text(widget.text),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColor.primaryColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0)))),
    );
  }
}

//TextArea
class CustomTextArea extends StatelessWidget {
  final String newText;
  final String newHintText;
  final textController;

  const CustomTextArea(
      {super.key,
      required this.newHintText,
      required this.newText,
      this.textController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          newText,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          width: 225,
          decoration: BoxDecoration(
            color: Color(0xffF1F1F1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextField(
              controller: textController,
              maxLines: 6,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: newHintText,
                  hintStyle: TextStyle(color: Color(0xff929292))),
            ),
          ),
        ),
      ],
    );
  }
}

//SMALL TEXTFIELD
class CustomSmallTextField extends StatelessWidget {
  final String newText;
  final String newHintText;
  final textController;

  const CustomSmallTextField(
      {super.key,
      required this.newHintText,
      required this.newText,
      this.textController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          newText,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          width: 110,
          decoration: BoxDecoration(
            color: Color(0xffF1F1F1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: textController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: newHintText,
                  hintStyle: TextStyle(color: Color(0xff929292))),
            ),
          ),
        ),
      ],
    );
  }
}
