// ignore_for_file: prefer_const_constructors, file_names, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:pulus/features/home/screen/bottomNav.dart';
import 'package:pulus/features/shop/widget/Waste_widget.dart';

class OWasteType extends StatefulWidget {
  const OWasteType({super.key});

  @override
  State<OWasteType> createState() => _OWasteTypeState();
}

class _OWasteTypeState extends State<OWasteType> {
  final List _organikTabs = [
    "assets/images/jagung.png",
    "Sampah Jagung",
    2.000,
    1.0
  ];

  bool jagungIsClicked = false;
  double beratTotal = 0.0;
  double totalUang = 0.0;
  double jagungItemQuantity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => BottomNav()));
          },
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
                        WasteWidget(
                          img: _organikTabs[0],
                          name: _organikTabs[1],
                          price: _organikTabs[2],
                          kg: _organikTabs[3],
                          isClicked: jagungIsClicked,
                          addOnPressed: () {
                            setState(() {
                              jagungIsClicked = !false;
                              jagungItemQuantity =
                                  jagungItemQuantity + _organikTabs[3];
                              beratTotal = beratTotal + _organikTabs[3];
                              totalUang = totalUang + _organikTabs[2];
                              print('quantity : ' +
                                  jagungItemQuantity.toStringAsFixed(1) +
                                  'x');
                              print('berat total : ' +
                                  beratTotal.toStringAsFixed(1) +
                                  'kg');
                              print('total uang : Rp' +
                                  totalUang.toStringAsFixed(3));
                            });
                          },
                          removeOnPressed: () {
                            setState(() {
                              jagungItemQuantity =
                                  jagungItemQuantity - _organikTabs[3];
                              jagungItemQuantity <= 0.0
                                  ? jagungIsClicked = false
                                  : print('quantity : ' +
                                      jagungItemQuantity.toStringAsFixed(1) +
                                      'x');

                              beratTotal = beratTotal - _organikTabs[3];
                              totalUang = totalUang - _organikTabs[2];

                              print('berat total : ' +
                                  beratTotal.toStringAsFixed(1) +
                                  'kg');
                              print('total uang : Rp' +
                                  totalUang.toStringAsFixed(3));
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            jagungIsClicked == false
                ? Container()
                : Padding(
                    padding: const EdgeInsets.fromLTRB(4, 20, 20, 4),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Berat total'),
                            Text(
                              '${beratTotal.toStringAsFixed(3)} kg',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total uang'),
                            Text(
                              'Rp${totalUang.toStringAsFixed(3)}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Divider(
                          color: Colors.black.withOpacity(0.5),
                        ),
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
    );
  }
}
