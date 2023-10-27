// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  List img = [
    'Black Coffe',
    'Cold coffee',
    'Espresso',
    'Latte',
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: [
        for (int i = 0; i < img.length; i++) 
        Container(
          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
          margin: EdgeInsets.symmetric(vertical: 8,horizontal: 13),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black.withOpacity(1),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.20),
                spreadRadius: 1,
                blurRadius: 8,
              ),
            ],
          ),
          child: Column(children: [
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "images/${img[i]}.png",
                  width: 120,
                  height: 120,
                ),
              ),
            ),
          ],),

        ),
      ],
    );
  }
}
