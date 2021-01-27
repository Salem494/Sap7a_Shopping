import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tokoto_market/constant.dart';
import 'package:tokoto_market/screens/SignUp_screen.dart';
import 'package:tokoto_market/screens/loginSuccess.dart';
import 'package:tokoto_market/size_config.dart';

import 'forgetpassword_screen.dart';

class SignInScreen extends StatelessWidget {
  static String routeName="/sign_in";
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
        title: Text("Sign In",style: TextStyle(color: Colors.grey,fontWeight:FontWeight.bold,fontSize: 25),),
        centerTitle: true,

      ),
      body:SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text('Welcome Back',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  Text("SignIn with your email and password \nor Continue with Social Media",textAlign: TextAlign.center),
                   SizedBox(height: getHeight(23),),
                  SignForm(),
                ],
              ),
            ),
          ),
        ),
      ) ,
    );
  }
}


class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {

  final GlobalKey  _formKey = GlobalKey<FormState>();
    String _email,_password;
    bool value = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        key:_formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                validator: (value){
                  if(value.isEmpty || value.contains('@')){
                    return ('Please Enter your Email');
                  }else{
                    return null;
                  }
                },
                onSaved: (value)=>_email = value,
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
            SizedBox(height: getHeight(20),),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                validator: (value){
                  if(value.isEmpty){
                    return ('Please Enter Your Password');
                  }
//                else if(value <= 6){
//                  return ('Please enter at less 8 Char ');
//                }
                  return null;
                },
                onSaved: (value)=>_password = value,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: 'Enter Your Password',
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
            Row(
              children: [
                  Checkbox(value: value,
                      onChanged: (newVal){
                    setState(() {
                      value = newVal;
                    });
                  }),
                Text('Remember Me'),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, ForgetPassword.routeName);
                    },
                    child: Text('Forget Password',
                      style: TextStyle(decoration: TextDecoration.underline),),
                  ),
                )
              ],
            ),
            SizedBox(height: getHeight(30),),
            SizedBox(
              width: double.infinity,
              height: getHeight(56),
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
            Container(
              padding: EdgeInsets.symmetric(vertical: 35,horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 2.0,
                    color: Colors.grey.shade200,
                    child: GestureDetector(
                      child:Image.asset('assets/00.png',color: Colors.grey.shade400,width: 40,),
                      onTap: (){},
                    ),
                  ),
                  Card(
                    elevation: 2.0,
                    color: Colors.grey.shade200,
                    child: GestureDetector(
                      child:Image.asset("assets/01.png",color: Colors.blue.shade400,width: 40),
                      onTap: (){},
                    ),
                  ),
                  Card(
                    elevation: 2.0,
                    color: Colors.grey.shade200,
                    child: GestureDetector(
                      child:Image.asset("assets/02.png",color: Colors.blue.shade400,width: 40),
                      onTap: (){},
                    ),
                  ),

                ],
              ),
            ),
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
      );

  }
}
