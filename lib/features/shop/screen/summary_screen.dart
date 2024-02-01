// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_local_variable, sort_child_properties_last, deprecated_member_use, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:pulus/data/app_color.dart';
import 'package:pulus/features/shop/widget/SumListItem.dart';

class SummaryView extends StatefulWidget {
  const SummaryView({
    super.key,
  });

  @override
  State<SummaryView> createState() => _SummaryViewState();
}

class _SummaryViewState extends State<SummaryView> {
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
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
              Navigator.pop(context);
            },
          ),
          title: Text(
            'JENIS SAMPAH',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return SumListItem(index: index);
                  }),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 4, 24, 4),
              child: Column(
                children: [
                  Divider(
                    color: Colors.black.withOpacity(0.5),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Berat total',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '4 kg',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total uang', style: TextStyle(fontSize: 16)),
                      Text(
                        'Rp8.000',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Divider(
                    color: Colors.black.withOpacity(0.5),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    height: 50,
                    width: Width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Konformasi'),
                      style: ElevatedButton.styleFrom(
                        primary: AppColor.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
