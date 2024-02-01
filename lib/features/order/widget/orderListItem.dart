// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pulus/data/app_color.dart';
import 'package:pulus/features/order/screen/orderDetail_view.dart';

class OrderListItem extends StatelessWidget {
  const OrderListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 6, 18, 4),
      child: InkWell(
        onTap: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => OrderDetailView()));
        },
        child: Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Order sedang berlangsung.',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                      'Ditunggu di drop point yaa! Jangan lupa sertakan order id pada kemasan limbah.',
                      style: TextStyle(height: 1.5, fontSize: 12)),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      Text(
                        'Drop point: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Text(
                        'Puntang Drop Point',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
