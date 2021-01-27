import 'package:flutter/material.dart';
import 'package:tokoto_market/constant.dart';
import 'package:tokoto_market/screens/Home/home_screen.dart';
import 'package:tokoto_market/size_config.dart';

class LoginSuccess extends StatelessWidget {
  static String routeName = '/loginSuccess';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,),
        ),
        title: Text("Login Success",style: TextStyle(color: Colors.grey,fontWeight:FontWeight.bold,fontSize: 25),),
        centerTitle: true,

      ),
      body: Column(
        children: [
          SizedBox(height: getHeight(SizeConfig.screenHeight *0.04),),
            Image.asset('assets/success.png'),
             SizedBox(height: getHeight(18)),
            Text('Login Success',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.black
            ),),
         SizedBox(height: 30,),
          Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth *0.90,
            height: SizeConfig.screenHeight* 0.08,
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0,left: 15.0),
              child: FlatButton(
                onPressed:  (){
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
                color:KPrimaryColor,
                child: Container(
                  padding:EdgeInsets.all(10) ,
                  child: Text('Back To Home',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
