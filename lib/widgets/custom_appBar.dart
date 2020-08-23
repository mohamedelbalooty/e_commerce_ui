import 'package:e_commerce_ui/constants.dart';
import 'package:flutter/material.dart';

Widget custom_appBar() {
  return AppBar(
    backgroundColor: KMainColor,
    elevation: 0.0,
    title: Row(
      children: <Widget>[
        Container(
          height: 35.0,
          width: 35.0,
          margin: EdgeInsets.only(right: 10.0),
          decoration: BoxDecoration(
            color: KWhiteColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.attach_money,
            color: Colors.orange,
          ),
        ),
        Text(
          '\$2.000',
          style: TextStyle(
            color: KWhiteColor,
            fontSize: 22.0,
          ),
        ),
      ],
    ),
    actions: <Widget>[
      Icon(
        Icons.search,
        color: KWhiteColor,
        size: 30.0,
      ),
      SizedBox(
        width: 10.0,
      ),
      Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 15.0),
            child: Icon(
              Icons.shop,
              size: 30.0,
              color: KWhiteColor,
            ),
          ),
          Positioned(
            right: 15,
            top: 14,
            child: Container(
              height: 12.0,
              width: 12.0,
              decoration: BoxDecoration(
                color: Colors.orange,
                border: Border.all(color: KWhiteColor, width: 1.0),
                shape: BoxShape.circle,
              ),
              child: Center(child: Text('2', style: TextStyle(color: KBlackColor, fontSize: 7.0, fontWeight: FontWeight.bold),),),
            ),
          ),
        ],
      ),
    ],
  );
}
