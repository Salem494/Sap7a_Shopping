
import 'package:flutter/material.dart';
import 'package:tokoto_market/models/products.dart';
import 'package:tokoto_market/size_config.dart';

import '../../constant.dart';
import 'body.dart';

class ProductDetails extends StatelessWidget {
  static String routeName = '/product-details';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.only(left: 10, top: 15),
          child: SizedBox(
            height: 10,
            width: 20,
            child: FlatButton(
              padding: EdgeInsets.zero,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back_ios_outlined),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10, top: 15),
            child: Row(
              children: [
                Text(
                  '4.5',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                )
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(demoProducts[0].images[0])),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  List.generate(demoProducts.length, (index) => buildSmallCard(
                    image: (demoProducts[index].images[0]),
                  ))

                ),
              ),
              DetailsBody()
            ],
          ),
        ),
      ),
    );
  }
}

class buildSmallCard extends StatelessWidget {
  final String image;

  const buildSmallCard({Key key, this.image}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getHeight(5)),
      width: getWidth(50),
      height: getWidth(50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: KTextColor),
      ),
      child: Image.asset(image),
    );
  }
}
