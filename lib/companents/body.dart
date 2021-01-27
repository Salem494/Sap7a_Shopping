import 'package:flutter/material.dart';
import 'package:tokoto_market/constant.dart';
import 'package:tokoto_market/screens/sign_in.dart';
import 'package:tokoto_market/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String,String>> splashData = [
    {
      "text":"Welcome To Our SaP7a, Lets Shopping!",
      "image":'assets/splash_1.png'
    },
    {
      "text":"We Help People To Connect My Store",
      "image":'assets/splash_2.png'
    },
    {
      "text":"We Shoe THe Easy New Shopping",
      "image":'assets/splash_3.png'
    },

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Spacer(),
            Expanded(
              flex: 3,
              child:PageView.builder(
                onPageChanged: (value){
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context,index)=> SplashContent(
                    splashData[index]["image"],
                    splashData[index]["text"],
                    ),
              ),
            ),
            Spacer(),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(splashData.length,
                            (index) =>bulidDot(index)
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: getHeight(56),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      color: KPrimaryColor,
                        onPressed: (){
                        Navigator.pushNamed(context, SignInScreen.routeName);
                        },
                        child: Container(
                      child: Text('Continue',style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold),),
                    )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  AnimatedContainer bulidDot(int index){
    return AnimatedContainer(
      duration: KAnimationDuration,
      child: Container(
        height: 6,
        width: currentPage == index ? 12 : 6,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color:currentPage==index? KPrimaryColor:Colors.grey
        ),
      ),
    );
  }
}



class SplashContent extends StatelessWidget {
 final String image,text;

  const SplashContent(this.image, this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Spacer(),
        Text(
          'SaP7a',
          style: TextStyle(
              color: KTextColor,
              fontSize: getHeight(40.0),
              fontWeight: FontWeight.bold),
        ),
        Text(text,style: TextStyle(fontWeight: FontWeight.bold),),
        SizedBox(height: 20),
        Image.asset(image,
        width: getWidth(230),
        height: getHeight(250),
        ),
        Spacer(),
      ],
    );
  }
}


