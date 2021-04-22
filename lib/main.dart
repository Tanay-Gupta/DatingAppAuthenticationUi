import 'package:dating_app/pages/loginPage/login.dart';
import 'package:dating_app/pages/signupPage/signup.dart';
import 'package:dating_app/pages/welcomePage/welcome.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dating App",
      //home: WelcomePage(),
      initialRoute: "/",
      routes: {
        "/": (context) => WelcomePage(),
        "/login": (context) => LoginPage(),
        "/signup": (context) => SignupPage(),
      },
    );
  }
}
