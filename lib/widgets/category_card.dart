import 'package:e_commerce_ui/models/category.dart';
import 'package:e_commerce_ui/models/category_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class CategoryCard extends StatelessWidget {
  static CategoryDetails _categoryDetails = CategoryDetails();
  List<Category> details = _categoryDetails.categoryDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[_cardDetails(0), _cardDetails(1), _cardDetails(2)],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[_cardDetails(3), _cardDetails(4), _cardDetails(5)],
        ),
      ],
    );
  }

  Widget _cardDetails(int index) {
    return Container(
      height: 72.0,
      width: 65.0,
      margin: EdgeInsets.only(bottom: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              color: KCardColor,
              shape: BoxShape.circle,
            ),
            child: Container(
              height: 30.0,
              width: 30.0,
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(details[index].image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Text(
            details[index].name,
            style: TextStyle(
              color: KBlackColor,
              fontSize: 13.0,
            ),
          ),
        ],
      ),
    );
  }
}
