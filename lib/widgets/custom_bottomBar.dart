import 'package:flutter/material.dart';
import '../constants.dart';

Widget custom_bottomBar(width){
  return Container(
    child: Row(
      children: <Widget>[
        GestureDetector(
          child: Container(
            height: 50.0,
            width: 70.0,
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: KWhiteColor,
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(color: KMainColor, width: 1.5,),
            ),
            child: Icon(Icons.shopping_cart, color: KMainColor,),
          ),
        ),
        GestureDetector(
          child: Container(
            height: 50.0,
            width: width - 120.0,
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: KMainColor,
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(color: KMainColor, width: 1.5,),
            ),
            child: Center(child: Text('\$590 Buy now', style: TextStyle(color: KWhiteColor, fontSize: 16.0, fontWeight: FontWeight.bold,),)),
          ),
        ),
      ],
    ),
  );
}