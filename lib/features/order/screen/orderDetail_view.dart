// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_local_variable, sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:pulus/data/app_color.dart';
import 'package:pulus/features/home/screen/bottomNav.dart';

class OrderDetailView extends StatefulWidget {
  const OrderDetailView({super.key});

  @override
  State<OrderDetailView> createState() => _OrderDetailViewState();
}

class _OrderDetailViewState extends State<OrderDetailView> {
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
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
          'DETAIL PESANAN',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Icon(
                      Icons.warning_amber,
                      color: AppColor.newYellow,
                      size: 35,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Tempel'),
                        Text(
                          " ORDER ID",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Text(
                      'di paket sampahmu',
                      style: TextStyle(height: 1.5),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(8)),
                        height: 45,
                        width: Width,
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ORDER ID',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              ' A1B19012',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ))),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Sampah jagung',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text('4.0kg')
                          ],
                        ),
                        Text('Rp8.000')
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Divider(
                      color: Colors.black.withOpacity(0.8),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Berat total'),
                        Text(
                          '3 kg',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total uang'),
                        Text(
                          'Rp8.000',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Divider(
                      color: Colors.black.withOpacity(0.8),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.0),
                            color: AppColor.newBlue),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
                          child: Text(
                            'Diproses',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 12),
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: Width,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Batalkan pesanan',
                    style: TextStyle(color: AppColor.newRed),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.white,
                    side: BorderSide(color: AppColor.newRed, width: 1.5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
