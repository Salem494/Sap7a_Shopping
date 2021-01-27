import 'package:flutter/material.dart';
import 'package:tokoto_market/constant.dart';
import 'package:tokoto_market/models/products.dart';
import 'package:tokoto_market/screens/product_details/Details_screen.dart';
import 'package:tokoto_market/size_config.dart';

class ProductCard extends StatelessWidget {
 final String title,image;
 final  double price;

  const ProductCard({
    Key key,
    @required this.title,
    @required this.image,
    @required this.price}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getWidth(140),
      child: Column(
        children: [
          AspectRatio(
              aspectRatio: 1.02,
             child: Container(
               padding: EdgeInsets.all(getWidth(20)),
               decoration: BoxDecoration(
                 color: KSecondaryColor.withOpacity(0.1),
                 borderRadius: BorderRadius.circular(15)
               ),
               child: Image.asset(image),

             ),
          ),
          Text(title,maxLines: 2,style: TextStyle(
            color: Colors.black,
              fontSize: getWidth(15),
          ),),
          Text('\$${price.toString()}',textAlign: TextAlign.center,style: TextStyle(
              fontSize: getWidth(18),
              color: KPrimaryColor,
              fontWeight: FontWeight.w600,
          ),)
        ],
      ),
    );
  }
}

class BodyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(demoProducts.length, (index) => GestureDetector(
           onTap: (){
             Navigator.pushNamed(context, ProductDetails.routeName);
           },
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: ProductCard(
              title:(demoProducts[index].title),
              image: (demoProducts[index].images[0]),
              price: (demoProducts[index].price),
            ),
          ),
        )),
      ),
    );
  }
}

