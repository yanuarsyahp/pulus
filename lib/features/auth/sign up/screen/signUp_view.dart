// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pulus/data/app_color.dart';
import 'package:pulus/widgets/widgets.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Masuk",
                style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Buat akun',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: Height * 0.05,
                  ),
                  CustomTexfield(
                      newText: 'Masukan Nama Lengkap',
                      newHintText: 'Nama lengkap'),
                  SizedBox(
                    height: Height * 0.03,
                  ),
                  CustomTexfield(
                      newText: 'Masukan Email',
                      newHintText: 'contoh@gmail.com'),
                  SizedBox(
                    height: Height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextArea(
                          newHintText: 'Jalan Bandung no.2',
                          newText: "Masukan alamat"),
                      Column(
                        children: [
                          CustomSmallTextField(
                              newHintText: '01', newText: "Masukan RT"),
                          SizedBox(
                            height: Height * 0.02,
                          ),
                          CustomSmallTextField(
                              newHintText: '01', newText: 'Masukan RW')
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: Height * 0.03,
                  ),
                  CustomPrivateTextField(
                    newPrivHintText: 'Password',
                    newText: 'Masukan Password',
                  ),
                  SizedBox(
                    height: Height * 0.03,
                  ),
                  CustomPrivateTextField(
                    newPrivHintText: 'Password',
                    newText: 'Masukan Kembali Password',
                  ),
                  SizedBox(
                    height: Height * 0.05,
                  ),
                ],
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(bottom: 36),
              child: Column(
                children: [
                  PrimaryButton(text: '    Daftar    ', onPressed: () {}),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sudah memiliki akun? ',
                        style: TextStyle(fontSize: 14, color: AppColor.newGrey),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text('Masuk',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: AppColor.primaryColor)),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
