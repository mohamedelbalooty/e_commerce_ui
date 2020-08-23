import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/screens/product_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  List<Map<String, dynamic>> _listDetails = [
    {'name': 'Casual jacket', 'image': 'assets/images/clothes/cloth1.jpg'},
    {'name': 'Casual trouser', 'image': 'assets/images/clothes/cloth2.jpg'},
    {'name': 'Shoes for men', 'image': 'assets/images/clothes/cloth3.jpg'},
    {'name': 'Casual shoes', 'image': 'assets/images/clothes/cloth4.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 15.0),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _listDetails.length,
          itemBuilder: (context, index) {
            return _customProductCard(index, context, _listDetails[index]);
          }),
    );
  }

  Widget _customButton() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            height: 30.0,
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                bottomLeft: Radius.circular(5.0),
              ),
            ),
            child: Center(
                child: Text(
              '75%',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            )),
          ),
        ),
        Expanded(
          child: Container(
            height: 30.0,
            decoration: BoxDecoration(
              color: Color(0xFFf9d5a1),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              ),
            ),
            child: Center(
                child: Text(
              'Off',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            )),
          ),
        ),
      ],
    );
  }

  Widget _customProductCard(index, context, details) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, ProductScreen.id, arguments: details);
      },
      child: Container(
        height: 115.0,
        width: 200.0,
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage(_listDetails[index]['image']),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 30.0,
                width: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: _customButton(),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                _listDetails[index]['name'],
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: KWhiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
