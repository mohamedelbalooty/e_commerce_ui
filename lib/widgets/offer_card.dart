import 'package:flutter/material.dart';

Widget offerCard(height, width){
  return Container(
    height: height > 360.0 ? height*0.2 : height * 0.45,
    width: width,
    margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      image: DecorationImage(
        image: ExactAssetImage('assets/images/offer.jpg'),
        fit: BoxFit.fill,
      ),
    ),
  );
}