import 'package:flutter/material.dart';

class WelcomeBackground extends StatelessWidget {
  final Widget body;

  const WelcomeBackground({Key key, this.body}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/main_top.png",
                width: size.width * 0.3),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset("assets/images/main_bottom.png",
                width: size.width * 0.2),
          ),
          body,
        ],
      ),
    );
  }
}
