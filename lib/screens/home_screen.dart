import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/widgets/card_list.dart';
import 'package:e_commerce_ui/widgets/category_card.dart';
import 'package:e_commerce_ui/widgets/custom_appBar.dart';
import 'package:e_commerce_ui/widgets/offer_card.dart';
import 'package:e_commerce_ui/widgets/product_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: KScaffoldColor,
      appBar: custom_appBar(),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: height * 0.2,
                    width: width,
                    color: KMainColor,
                  ),
                  SizedBox(
                    height: height > 360.0 ? height * 0.12 : height * 0.5,
                  ),
                  offerCard(height, width),
                  productTitle(),
                  CardList(),
                ],
              ),
            ),
            Container(
              width: width,
              height: height > 360.0 ? height * 0.32 : height * 0.65,
              margin: EdgeInsets.only(
                left: 15.0,
                right: 15.0,
              ),
              decoration: BoxDecoration(
                color: KWhiteColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 2.0, 15.0, 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Category',
                          style: TextStyle(
                            color: KBlackColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: KBlackColor,
                          size: 26.0,
                        ),
                      ],
                    ),
                  ),
                  CategoryCard(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        fixedColor: KMainColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _currentIndex == 0 ? KMainColor : Colors.grey.shade400,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group,
              color: _currentIndex == 1 ? KMainColor : Colors.grey.shade400,
            ),
            title: Text('Voucher'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: _currentIndex == 2 ? KMainColor : Colors.grey.shade400,
            ),
            title: Text('Favorite'),
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 30.0,
              width: 30.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: ExactAssetImage('assets/images/user.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            title: Text('Me'),
          ),
        ],
      ),
    );
  }
}
