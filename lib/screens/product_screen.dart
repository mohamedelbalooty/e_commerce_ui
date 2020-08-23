import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/widgets/custom_bottomBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  static String id = 'ProductScreen';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Map<String, dynamic> _details = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            elevation: 0.0,
            leading: Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white.withOpacity(0.5),
              ),
              child: Center(
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: KBlackColor,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            expandedHeight: height * 0.4,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage(_details['image']),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: 40.0,
                      width: 40.0,
                      margin: EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: KWhiteColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.favorite,
                            color: KFavouriteColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: height*0.8,
              width: width,
              color: KWhiteColor,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              _details['name'],
                              style: TextStyle(
                                color: KBlackColor,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '100 % New!!',
                              style: TextStyle(
                                color: KBlackColor,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text(
                            '\$590',
                            style: TextStyle(
                              color: KMainColor,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '⭐︱4.8',
                          style: TextStyle(
                              fontSize: 16.0,
                              color: KBlackColor,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 3.0),
                          child: Text(
                            '192 Sold',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: KBlackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        Text(
                          'Share',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: KBlackColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Icon(
                          Icons.share,
                          color: KBlackColor,
                          size: 25.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 5.0,
                          width: 5.0,
                          margin: EdgeInsets.only(top: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: KBlackColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 80.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 3.0),
                          child: Text(
                            'Review (16)',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Clothing is items worn on the body. Clothing is typically made of fabrics or textiles but over time has included garments made from animal skin or other thin sheets of materials put together. The wearing of clothing is mostly restricted to human beings and is a feature of all human societies.',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                          letterSpacing: 0.8),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: custom_bottomBar(width),
    );
  }
}
