import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tokoto_market/models/products.dart';
import 'package:tokoto_market/screens/cart_screen.dart';
import 'package:tokoto_market/size_config.dart';

import '../../constant.dart';

class DetailsBody extends StatelessWidget {
  final Product product;

  final List color = [
    Colors.red,
    Colors.blue,
    Colors.grey,
  ];

  DetailsBody({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
//      mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: getWidth(20)),
            margin: EdgeInsets.only(top: getWidth(20)),
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
              child: Text('Nike Shoes',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900)),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              child: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 25,
              ),
              padding: EdgeInsets.all(25),
              width: getWidth(65),
              decoration: BoxDecoration(
                  color: Colors.red.shade300,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  )),
            ),
          ),
          SizedBox(height: 15),
          Text(
            '"Wireless Controller for PS4™\n gives you what you want in your\n gaming from over precision control your games to sharing …";',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontSize: 15.0,
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'See More Details   >',
                  style: TextStyle(color: Colors.red),
                )),
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    color.length,
                    (index) => DotCircle(
                      color: color[index],
                    ),
                  ),
                  GestureDetector(onTap: () {}, child: Icon(Icons.remove)),
                  GestureDetector(onTap: () {}, child: Icon(Icons.add)),
                ]),
          ),
          SizedBox(height: 18),
          SizedBox(
            width: SizeConfig.screenWidth * 0.90,
            height: SizeConfig.screenHeight * 0.08,
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15.0),
              child: FlatButton(
                onPressed: () {
                        Navigator.pushNamed(context,ScreenCart.routeName);
                },
                color: KPrimaryColor,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Add To Cart',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
        ]);
  }
}

class DotCircle extends StatelessWidget {
  final Color color;

  const DotCircle({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: getWidth(30),
        height: getWidth(30),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ));
  }
}
