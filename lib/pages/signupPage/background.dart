import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget body;

  const Background({Key key, this.body}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: double.infinity,
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: Image.asset("assets/images/signup_top.png",
                  width: size.width * .38)),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: size.width * .25,
            ),
          ),
          body,
        ],
      ),
    );
  }
}
