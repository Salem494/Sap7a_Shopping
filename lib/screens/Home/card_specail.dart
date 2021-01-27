import 'package:flutter/material.dart';
import 'package:tokoto_market/size_config.dart';

class SpecailCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: getWidth(100),
            width: getWidth(242),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  Image.asset('assets/Image Banner 2 - Copy.png',
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end:Alignment.bottomCenter,
                            colors: [
                              Color(0xFF343434).withOpacity(0.5),
                              Color(0xFF343434).withOpacity(0.16),
                            ]
                        )
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Text.rich(
                      TextSpan(
                          style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                          text: 'SmartPhone\n',
                          children:[
                            TextSpan(text: '10 Brands',)
                          ]
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 20,),
          SizedBox(
            height: getWidth(100),
            width: getWidth(242),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                     Image.asset('assets/Image Banner 3 - Copy.png',
                      fit: BoxFit.cover,
                      height: 150,
                    ),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end:Alignment.bottomCenter,
                            colors: [
                              Color(0xFF343434).withOpacity(0.5),
                              Color(0xFF343434).withOpacity(0.16),
                            ]
                        )
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Text.rich(
                      TextSpan(
                          style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                          text: 'Fashion\n',
                          children:[
                            TextSpan(text: '50 Brands',)
                          ]
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class TitleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Special Brand For You!' ,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),),
          Text('See More')
        ],
      ),
    );
  }
}

class TitleCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Popular Product ' ,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),),
          Text('See More')
        ],
      ),
    );
  }
}


