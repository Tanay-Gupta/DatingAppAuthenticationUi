import 'package:dating_app/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:dating_app/pages/welcomePage/background.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return WelcomeBackground(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * .05,
              ),
              Text(
                "WELCOME TO CODEMATE",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
              ),
              Text(
                "FIND YOUR BEST MATCHES 💜",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
              ),
              SizedBox(height: size.height * 0.05),
              SvgPicture.asset(
                "assets/images/welcomepage.svg",
                height: size.height * .30,
              ),
              SizedBox(height: size.height * 0.05),
              CircularButton(
                text: "LOGIN",
                color: Color(0xff6F35A5),
                textColor: Colors.white,
                press: () => Navigator.pushNamed(context, "/login"),
              ),
              SizedBox(
                height: 20,
              ),
              CircularButton(
                text: "SIGN UP",
                color: Color(0xffF1E6FF),
                textColor: Colors.black,
                press: () => Navigator.pushNamed(context, "/signup"),
              ),
              SizedBox(height: size.height * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}
