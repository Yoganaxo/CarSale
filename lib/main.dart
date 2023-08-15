import 'package:carapp/Widgets/Mainpage/inside_page.dart';
import 'package:carapp/Widgets/forgot_password.dart';
import 'package:carapp/Widgets/login_page.dart';
import 'package:carapp/Widgets/register_page.dart';
import 'package:carapp/bottom_navigation.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(CarApp());
}

class CarApp extends StatelessWidget {
  const CarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZY . ng',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      
      initialRoute: '/',
      routes: {
        '/':(context) => const RootBottomNavigation(),
        '/loginPage':(context) => const LoginPage(),
        '/forgotPassword' :(context) => const ForgotPasswordPage(),
        '/register':(context) => const RegisterPage(),
        '/mainPage':(context) => const FirstPage(),
      },
    );
  }
}


