import 'package:flutter/material.dart';
import 'package:tokoto_market/constant.dart';
import 'package:tokoto_market/models/cart.dart';
import 'package:tokoto_market/models/products.dart';
import 'package:tokoto_market/size_config.dart';

class ScreenCart extends StatelessWidget {
  static String routeName = '/screen-cart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: FlatButton(onPressed: (){
          Navigator.of(context).pop();
        },
            child: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,)),
        title: Column(
          children: [
            Text('Your Cart',style: TextStyle(color: Colors.black,fontSize: 20),),
            Text('${demoCarts[0].numOfItem} Items',style: TextStyle(color: Colors.black,fontWeight:FontWeight.w400),),
          ],
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 12),
       itemBuilder: (context,index){
         return Padding(
           padding: EdgeInsets.all(5.0),
           child: ItemCard(
               title: demoCarts[index].product.title,
               image: demoCarts[index].product.images[0],
               price: demoCarts[index].product.price,
               numOfItem: demoCarts[index].numOfItem,
             ),
         );
       },
        itemCount: demoCarts.length,
      ),
      bottomNavigationBar: Container(
        height: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          color: Colors.white,
          boxShadow:[
            BoxShadow(
                offset: Offset(0,-12),
                blurRadius: 10
            )
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.note_add_sharp,color: KTextColor,size: 50,),
                  Text('Add Voucher Code   >',style: TextStyle(fontSize: 18.0),),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
               Column(
                 children: [
                   Text('Total:'),
                   SizedBox(height: 10,),
                   Text('\$${337.15}',style: TextStyle(
                       color: KPrimaryColor,
                       fontSize: 20,
                       fontWeight: FontWeight.bold
                   ),),
                 ],
               ),
                  SizedBox(
                    width: 150,
                    height: 55,
                    child: Container(
                      decoration: BoxDecoration(
                        color: KPrimaryColor,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: FlatButton(
                          onPressed: (){},
                          child: Text('Check Out',style: TextStyle(color: Colors.white),),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final String title,image;
  final int numOfItem;
  final double price;

  const ItemCard({Key key, this.title, this.image, this.numOfItem, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SizedBox(
              width: getWidth(90),
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  padding: EdgeInsets.all(getWidth(5)),
                  child: Image.asset(image),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 20,),
          Column(
            children: [
               Text(title,style: TextStyle(color: Colors.black,fontSize: 20),),
              SizedBox(height: 10),
              Text.rich(
                TextSpan(text: '\$${price}',
                style: TextStyle(color: Colors.red,fontSize: 18),
                  children: [
                    TextSpan(text: 'x${numOfItem}',style: TextStyle(color: KTextColor))
                  ]
                )
              )
            ],
          )
        ],
    );
  }
}

