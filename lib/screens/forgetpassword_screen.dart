import 'package:flutter/material.dart';
import 'package:tokoto_market/screens/loginSuccess.dart';

import '../constant.dart';
import '../size_config.dart';
import 'SignUp_screen.dart';

class ForgetPassword extends StatelessWidget {
  static String routeName = '/forgetPassword';
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
          title: Text("Forget Password",style: TextStyle(color: Colors.grey,fontWeight:FontWeight.bold,fontSize: 25),),
          centerTitle: true,

        ),
          body:SafeArea(
          child:SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
              child:Column(
                    children: [
                      Text('Forget Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
                      Text('please enter your email and we will send\n you link to return your account',textAlign: TextAlign.center,),
                      SizedBox(height: 50,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          validator: (value){
                            if(value.isEmpty){
                              return ('Please Enter Your email');
                            }
//                else if(value <= 6){
//                  return ('Please enter at less 8 Char ');
//                }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Email",
                            suffixIcon: Icon(Icons.email),
                            hintText: 'Enter Your Email',
                            enabledBorder: OutlineInputBorder(
                              gapPadding: 10,
                              borderSide: BorderSide(color: KTextColor),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            contentPadding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                            focusedBorder: OutlineInputBorder(
                              gapPadding: 10,
                              borderSide: BorderSide(color: KTextColor),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: SizeConfig.screenWidth *0.90,
                        height: SizeConfig.screenHeight* 0.08,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0,left: 15.0),
                          child: FlatButton(
                            onPressed:  (){
                              Navigator.pushNamed(context, LoginSuccess.routeName);
                            },
                            color:KPrimaryColor,
                            child: Container(
                              padding:EdgeInsets.all(10) ,
                              child: Text('Continue',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Don،t have an account? '),
                            GestureDetector(
                                onTap: (){
                                  Navigator.pushNamed(context, SignUpScreen.routeName);
                                },
                                child: Text('Sign Up',style: TextStyle(color: Colors.redAccent),))
                          ],
                        ),
                      )

                    ],
                  ),
              ),
            ),
          ) ,
    );
  }
}
