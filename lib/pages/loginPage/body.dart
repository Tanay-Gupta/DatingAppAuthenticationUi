import 'package:dating_app/pages/loginPage/background.dart';
import 'package:dating_app/widgets/button.dart';
import 'package:dating_app/widgets/circular_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Welcome Back!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21,
              ),
            ),
            SizedBox(height: size.height * .05),
            SvgPicture.asset(
              "assets/images/loginpage.svg",
              fit: BoxFit.fitWidth,
              height: size.height * .35,
            ),

            SizedBox(height: size.height * 0.05),
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
              text: "LOGIN",
              color: Color(0xff6F35A5),
              textColor: Colors.white,
              press: () {},
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ?",
                  style: TextStyle(color: Color(0xff6F35A5)),
                ),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, "/signup"),
                  child: Text("Sign Up",
                      style: TextStyle(
                        color: Color(0xff6F35A5),
                        fontWeight: FontWeight.bold,
                      )),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
