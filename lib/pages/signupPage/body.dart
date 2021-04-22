import 'package:dating_app/pages/signupPage/background.dart';
import 'package:dating_app/pages/signupPage/bottomicon.dart';

import 'package:dating_app/widgets/button.dart';
import 'package:dating_app/widgets/circular_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Here's your first step with us!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  color: Colors.black),
            ),
            SizedBox(height: size.height * .02),

            SvgPicture.asset(
              "assets/images/signpage.svg",
              //fit: BoxFit.cover,
              height: size.height * .30,
            ),
            SizedBox(height: size.height * 0.02),
            //container

            RoundedTextField(
              color: Color(0xff6F35A5),
              icon: Icons.person,
              text: "Your Username",
              privacy: false,
              suffixicon: null,
            ),
            SizedBox(height: size.height * 0.02),
            RoundedTextField(
              color: Color(0xff6F35A5),
              icon: Icons.lock,
              text: "Your Password",
              privacy: true,
              suffixicon: Icons.remove_red_eye,
            ),

            SizedBox(height: size.height * 0.02),
            CircularButton(
              text: "SIGN UP",
              color: Color(0xff6F35A5),
              textColor: Colors.white,
              press: () {},
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an Account ?",
                  style: TextStyle(color: Color(0xff6F35A5)),
                ),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, "/login"),
                  child: Text("Sign In",
                      style: TextStyle(
                        color: Color(0xff6F35A5),
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              width: size.width * .45,
              height: 20,
              child: Text("------------- OR -------------",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.deepPurple)),
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                BottomIcons(
                  iconSrc: "assets/images/icons/facebook.svg",
                  press: () {},
                ),
                BottomIcons(
                  iconSrc: "assets/images/icons/twitter.svg",
                  press: () {},
                ),
                BottomIcons(
                  iconSrc: "assets/images/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
