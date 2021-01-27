import 'package:flutter/material.dart';
import 'package:tokoto_market/size_config.dart';

class Category extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    List<Map<String,dynamic>> categories =[
    {"icon": "1" ,"text": "Flash Deal"},
    {"icon": "2" ,"text": "Bill"},
    {"icon": "3" ,"text": "Game"},
    {"icon": "4" ,"text":"Daily Gift"},
    {"icon": "5","text": "More"},
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        categories.length, (index) => CategoryCard (
        text:categories[index]['text'],
       icon: categories[index]['icon'],
        press: (){}
        ),
    )
    );
  }
}


class CategoryCard extends StatelessWidget {
  final String text,icon;
  final GestureTapCallback press;


 const CategoryCard({
   @required this.text,
   @required this.icon,
   @required this.press,

 });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getWidth(50),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getWidth(15)),
                child: Text(icon),
                decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(text,textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}







