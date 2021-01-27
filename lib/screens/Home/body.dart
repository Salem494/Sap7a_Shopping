import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tokoto_market/constant.dart';
import 'package:tokoto_market/screens/Home/product_card.dart';
import 'package:tokoto_market/screens/cart_screen.dart';

import '../../size_config.dart';
import '../profile_screen.dart';
import 'card_specail.dart';
import 'categories.dart';

class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
   child: SingleChildScrollView(
     child: Padding(
       padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
       child: Column(
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               SizedBox(
                 width: 60,
                 height: 40,
                 child: FlatButton(
                   padding: EdgeInsets.all(10.0),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(5),
                       side: BorderSide(color: Colors.white)
                     ),
                     onPressed:(){
                   Navigator.pushNamed(context, ProfileScreen.routeName);
                 },
                     child: Icon(Icons.person,color: Colors.grey.shade600,size: 25,)),
               ),
                Container(
                   width: SizeConfig.screenWidth * 0.6,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: KSecondaryColor.withOpacity(0.1),
                   ),
                   child: TextField(
                     textAlign: TextAlign.center,
                     onChanged: (value){},
                     decoration: InputDecoration(
                       border: InputBorder.none,
                         hintText: 'Search Product',
                       enabledBorder: InputBorder.none,
                       prefixIcon:  Icon(Icons.search)
                     ),
                   ),
                 ),
                SizedBox(width: 8,),
                Expanded(
                  child: SizedBox(
                    width: 60,
                    height: 40,
                    child: Container(
//                  padding: EdgeInsets.all(15.0),
               width: SizeConfig.screenWidth * 0.2,
               decoration: BoxDecoration(
                       color: KSecondaryColor.withOpacity(0.1),
                       borderRadius: BorderRadius.circular(10),
               ),
               child: TextField(
                       decoration: InputDecoration(
                         focusedBorder: InputBorder.none,
                         enabledBorder: InputBorder.none,
                         suffixIcon: Center(child: GestureDetector(
                             onTap: (){
                               Navigator.pushNamed(context, ScreenCart.routeName);
                             },
                             child: Icon(Icons.shopping_cart)))
                       ),
               ),
             ),
                  ),
                ),
             ],
           ),
           SizedBox(height: getHeight(50),),
           Container(
             padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
               decoration: BoxDecoration(
                 color: Colors.deepPurple,
                 borderRadius: BorderRadius.circular(15)
               ),
               width: double.infinity,
             height: 100,
             child: Text.rich(
               TextSpan(
                 children: [
                   TextSpan(
                     style: TextStyle(fontSize: 20,),
                   text:'CashBack 20%'
                   )
               ],
                   text:'Winter Surpise\n',
                    style: TextStyle(color: Colors.white,fontSize: 15),
               ),

             )
             ),
           SizedBox(height: getHeight(30),),
           Category(),
           SizedBox(height: getHeight(30),),
           TitleCard(),
           SpecailCard(),
           TitleCard2(),
           BodyCard()

         ],
       ),
     ),
   ),
    );
  }
}
