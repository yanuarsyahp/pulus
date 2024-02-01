// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class SumListItem extends StatelessWidget {
  final int index;
  const SumListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 6, 24, 4),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
          child: Row(
            children: [
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14)),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Image.asset(
                    'assets/images/jagung.png',
                    scale: 20,
                  ),
                ),
              ),
              SizedBox(
                width: 14,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sampah jagung',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text('Rp2.000'),
                  SizedBox(
                    height: 14,
                  ),
                  Text("1x")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
