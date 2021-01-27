
import 'package:flutter/material.dart';
import 'package:tokoto_market/screens/Home/home_screen.dart';
import 'package:tokoto_market/screens/OTP_screen.dart';
import 'package:tokoto_market/screens/SignUp_screen.dart';
import 'package:tokoto_market/screens/cart_screen.dart';
import 'package:tokoto_market/screens/completeRegister_screen.dart';
import 'package:tokoto_market/screens/forgetpassword_screen.dart';
import 'package:tokoto_market/screens/loginSuccess.dart';
import 'package:tokoto_market/screens/product_details/Details_screen.dart';
import 'package:tokoto_market/screens/profile_screen.dart';
import 'package:tokoto_market/screens/sign_in.dart';
import 'package:tokoto_market/screens/splash_screen.dart';

 final Map<String,WidgetBuilder> routes = {
   SplashScreen.routeName:(context)=>SplashScreen(),
   SignInScreen.routeName:(context)=>SignInScreen(),
   ForgetPassword.routeName:(context)=>ForgetPassword(),
   LoginSuccess.routeName:(context)=>LoginSuccess(),
   SignUpScreen.routeName:(context)=>SignUpScreen(),
   CompleteRegister.routeName:(context)=>CompleteRegister(),
   OTPScreen.routeName:(context)=>OTPScreen(),
   HomeScreen.routeName:(context)=>HomeScreen(),
   ProductDetails.routeName:(context)=>ProductDetails(),
   ScreenCart.routeName:(context)=>ScreenCart(),
   ProfileScreen.routeName:(context)=>ProfileScreen(),

};