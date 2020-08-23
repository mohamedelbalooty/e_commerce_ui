import 'package:e_commerce_ui/constants.dart';
import 'package:flutter/material.dart';

Widget productTitle() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 30.0,
          width: 30.0,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: Text(
              '%',
              style: TextStyle(
                  color: KBlackColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
        Text(
          'Product promo',
          style: TextStyle(
            color: KBlackColor,
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
