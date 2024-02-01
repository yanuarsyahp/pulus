// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:pulus/data/app_color.dart';
import 'package:pulus/features/home/widget/noTab.dart';
import 'package:pulus/features/shop/screen/oWasteType_screen.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

    List nonOrganikTabs = [
      //[image, title]
      ["assets/images/botol.png", "Botol"],
      ["assets/images/cup.png", "Cup"],
      ["assets/images/kalengsoda.png", "Kaleng Soda"],
      ["assets/images/kalengtebal.png", "Kaleng Tebal"],
      ["assets/images/karton.png", "Karton"],
      ["assets/images/kardus.png", "Kardus"],
      ["assets/images/besi.png", "Besi"],
      ["assets/images/plastik.png", "Plastik"],
    ];

    List<String> organikTab = ['assets/images/jagung.png', 'Jagung'];

    return Scaffold(
      floatingActionButton: SpeedDial(
        backgroundColor: AppColor.primaryColor,
        child: Image.asset('assets/images/recycle.png'),
        spacing: 12,
        spaceBetweenChildren: 22,
        children: [
          SpeedDialChild(
              child: Image.asset('assets/images/plastic.png'),
              label: 'Non-organik',
              onTap: () {
                // Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(
                //         builder: ((context) => const NoWasteType())));
              },
              backgroundColor: AppColor.primaryColor,
              foregroundColor: Colors.white),
          SpeedDialChild(
              child: Image.asset('assets/images/corn.png'),
              label: 'Organik',
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: ((context) => OWasteType())));
              },
              backgroundColor: AppColor.primaryColor,
              foregroundColor: Colors.white)
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //hello nama
                Text(
                  'Halo, Naufal',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                //live location
                Text(
                  'Bandung, Indonesia',
                  style: TextStyle(fontSize: 13, height: 1.5),
                ),
                SizedBox(
                  height: Height * 0.02,
                ),
                //image
                Stack(children: [
                  Image.asset('assets/images/home_design.png'),
                  Positioned(
                      top: 20,
                      left: 20,
                      child: Text(
                        '20',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 48,
                            color: Colors.white),
                      )),
                  Positioned(
                      top: 72,
                      left: 20,
                      child: Text(
                        'paket sampah sudah\nberhasil ngehasilin\nRp575.000!',
                        style: TextStyle(
                            fontSize: 16, color: Colors.white, height: 1.5),
                      )),
                  Positioned(
                      top: 150,
                      left: 20,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.newPurple,
                            // minimumSize: Size(0, 35),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24))),
                        child: Text(
                          'Daur lagi ah! ',
                          style: TextStyle(fontSize: 14),
                        ),
                      )),
                ]),
                SizedBox(
                  height: Height * 0.02,
                ),
                //non-organik
                Text(
                  'Non-organik',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Height * 0.02,
                ),
                //non-rganik items
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NonOrganikTab(
                        imagePath: nonOrganikTabs[0][0],
                        title: nonOrganikTabs[0][1]),
                    NonOrganikTab(
                        imagePath: nonOrganikTabs[1][0],
                        title: nonOrganikTabs[1][1]),
                    NonOrganikTab(
                        imagePath: nonOrganikTabs[2][0],
                        title: nonOrganikTabs[2][1]),
                    NonOrganikTab(
                        imagePath: nonOrganikTabs[3][0],
                        title: nonOrganikTabs[3][1]),
                  ],
                ),
                SizedBox(
                  height: Height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NonOrganikTab(
                        imagePath: nonOrganikTabs[4][0],
                        title: nonOrganikTabs[4][1]),
                    NonOrganikTab(
                        imagePath: nonOrganikTabs[5][0],
                        title: nonOrganikTabs[5][1]),
                    NonOrganikTab(
                        imagePath: nonOrganikTabs[6][0],
                        title: nonOrganikTabs[6][1]),
                    NonOrganikTab(
                        imagePath: nonOrganikTabs[7][0],
                        title: nonOrganikTabs[7][1]),
                  ],
                ),
                SizedBox(
                  height: Height * 0.04,
                ),
                //organik
                Text(
                  'Organik',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Height * 0.02,
                ),
                //organik items
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0, 5),
                              blurRadius: 3,
                              spreadRadius: 1,
                            )
                          ]),
                      child: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Image.asset(
                            organikTab[0],
                            height: 50,
                            width: 50,
                          )),
                    ),
                    SizedBox(
                      height: Height * 0.02,
                    ),
                    Text(organikTab[1]),
                    SizedBox(
                      height: Height * 0.05,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
