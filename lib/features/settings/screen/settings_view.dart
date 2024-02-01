// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:pulus/data/app_color.dart';
import 'package:pulus/features/settings/widget/settings_widget.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(0, 2),
                            blurRadius: 5,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        color: AppColor.primaryColor,
                        onPressed: () {},
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 2),
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.logout,
                                color: AppColor.newRed,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Text('Logout'),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: Height * 0.05,
                ),
                SettingButton(
                    image: 'assets/images/profile.png',
                    text: 'Informasi Akun',
                    icon: true,
                    sizeImage: 3),
                SizedBox(
                  height: Height * 0.01,
                ),
                SettingButton(
                    image: 'assets/images/lock.png',
                    text: 'Ganti password',
                    icon: true,
                    sizeImage: 3),
                SizedBox(
                  height: Height * 0.01,
                ),
                SettingButton(
                    image: 'assets/images/call.png',
                    text: 'Ketentuan & Privasi',
                    icon: true,
                    sizeImage: 3),
                SizedBox(
                  height: Height * 0.01,
                ),
                SettingButton(
                    image: 'assets/images/info.png',
                    text: 'Bantuan',
                    icon: true,
                    sizeImage: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
