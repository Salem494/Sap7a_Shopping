import 'package:flutter/material.dart';
import 'package:tokoto_market/constant.dart';
import 'package:tokoto_market/size_config.dart';

//OTP means it => One Time PiN   verfication Code Number :::  4 number

class OTPScreen extends StatelessWidget {
  static String routeName = '/otp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
        ),
        title: Text(
          "OPT verification",
          style: TextStyle(
              color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(15)),
            child: Column(children: [
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              Text(
                'OPT Verification',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 28),
              ),
              Text("We sent Your Code TO +0201068984178"),
              bulidTime(),
              SizedBox(height: SizeConfig.screenHeight * 0.14),
//              OTPForm(),
              Spacer(),
              Text(
                'Resend OTP Code',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
              Spacer(),
            ]),
          ),
        ),
      ),
    );
  }
}

Row bulidTime() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('this code will expire in'),
      TweenAnimationBuilder(
        tween: Tween(begin: 30, end: 0),
        duration: Duration(seconds: 30),
        builder: (context, value, child) => Text(
          '00:${value.toInt()}',
          style: TextStyle(color: KPrimaryColor),
        ),
      )
    ],
  );
}

class OTPForm extends StatefulWidget {
  @override
  _OTPFormState createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  FocusNode feild2;
  FocusNode feild3;
  FocusNode feild4;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    feild2 = FocusNode();
    feild3 = FocusNode();
    feild4 = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    feild2.dispose();
    feild3.dispose();
    feild4.dispose();
    super.dispose();
  }

  void nextFeild(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Form(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
            width: getWidth(60),
            child: TextFormField(
              textAlign: TextAlign.center,
              onChanged: (value) {
                nextFeild(value, feild2);
              },
              keyboardType: TextInputType.number,
              obscureText: true,
              autofocus: true,
//             focusNode: ,
              style: TextStyle(fontSize: 25),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: KTextColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: KTextColor)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: KTextColor))),
            ),
          ),
          SizedBox(
            width: getWidth(60),
            child: TextFormField(
              textAlign: TextAlign.center,
              autofocus: true,
              obscureText: true,
              onChanged: (value) {
                nextFeild(value, feild3);
              },
              focusNode: feild2,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 25),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: KTextColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: KTextColor)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: KTextColor))),
            ),
          ),
          SizedBox(
            width: getWidth(60),
            child: TextFormField(
              onChanged: (value) {
                nextFeild(value, feild4);
              },
              textAlign: TextAlign.center,
              focusNode: feild3,
              autofocus: true,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 25),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: KTextColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: KTextColor)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: KTextColor))),
            ),
          ),
          SizedBox(
            width: getWidth(60),
            child: TextFormField(
              textAlign: TextAlign.center,
              obscureText: true,
              autofocus: true,
              focusNode: feild4,
              onChanged: (value) {
                feild4.unfocus();
              },
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 25),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: KTextColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: KTextColor)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: KTextColor))),
            ),
          ),
        ]),
      ),
      SizedBox(height: SizeConfig.screenHeight * 0.14),
      SizedBox(
        width: SizeConfig.screenWidth * 0.70,
        height: SizeConfig.screenHeight * 0.08,
        child: Padding(
          padding: const EdgeInsets.only(right: 15.0, left: 15.0),
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, OTPScreen.routeName);
            },
            color: KPrimaryColor,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Continue',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    ]);
  }
}
