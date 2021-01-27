import 'package:flutter/material.dart';
import 'package:tokoto_market/screens/Home/home_screen.dart';

import '../constant.dart';
import '../size_config.dart';
import 'OTP_screen.dart';

class CompleteRegister extends StatefulWidget {
  static String routeName = '/completeRegister';
  @override
  _CompleteRegisterState createState() => _CompleteRegisterState();
}

class _CompleteRegisterState extends State<CompleteRegister> {
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
          title: Text("Register",style: TextStyle(color: Colors.grey,fontWeight:FontWeight.bold,fontSize: 25),),
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
                    Text('Register Account',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    Text("Complete your details \nor Continue with Social Media",textAlign: TextAlign.center),
                    SizedBox(height: getHeight(23),),
                    SignForm(),
                  ],
                ),
              ),
            ),
          ),
        )
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
                if(value.isEmpty){
                  return ('Please Enter First Name');
                }else{
                  return null;
                }
              },
              onSaved: (value)=>_email = value,
              decoration: InputDecoration(
                labelText: "First Name",
                suffixIcon: Icon(Icons.person),
                hintText: 'Enter Your First Name',
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
                  return ('Please Enter Your Last Name');
                }
//                else if(value <= 6){
//                  return ('Please enter at less 8 Char ');
//                }
                return null;
              },
              onSaved: (value)=>_password = value,
              decoration: InputDecoration(
                labelText: "Last Name",
                suffixIcon: Icon(Icons.person),
                hintText: 'Enter Your Last Name',
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
                  return ('Please Enter Your Phone Number');
                }
//                else if(value <= 6){
//                  return ('Please enter at less 8 Char ');
//                }
                return null;
              },
              onSaved: (value)=>_password = value,
              decoration: InputDecoration(
                labelText: "Phone",
                suffixIcon: Icon(Icons.mobile_screen_share),
                hintText: 'Enter Your Phone Number',
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
                  return ('Please Enter Your Address');
                }
//                else if(value <= 6){
//                  return ('Please enter at less 8 Char ');
//                }
                return null;
              },
              onSaved: (value)=>_password = value,
              decoration: InputDecoration(
                labelText: "Address",
                suffixIcon: Icon(Icons.add_location),
                hintText: 'Enter Your Address',
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
          SizedBox(
            width: SizeConfig.screenWidth*0.90,
            height: SizeConfig.screenHeight*0.08,
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0,left: 15.0),
              child: FlatButton(
                onPressed:  (){
                  Navigator.pushNamed(context, HomeScreen.routeName);
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
          SizedBox(height: 10),
          Text('By Continue your confirm that you agree\n with  our term and condition',textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.bold),),
        ],
      ),
    );

  }
}