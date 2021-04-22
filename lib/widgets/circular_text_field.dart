import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  final String text;
  final Color color;
  final IconData icon, suffixicon;
  final bool privacy;

  const RoundedTextField(
      {Key key,
      this.text,
      this.color,
      this.privacy,
      this.icon,
      this.suffixicon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      borderRadius: BorderRadius.circular(29),
      color: Color(0xffF1E6FF),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        height: 55,
        width: size.width * .8,
        child: TextFormField(
          cursorColor: color,
          obscureText: privacy,
          // keyboardType: TextInputType.number,
          decoration: InputDecoration(
              hintText: text,
              border: InputBorder.none,
              icon: Icon(
                icon,
                color: color,
              ),
              suffixIcon: Icon(
                suffixicon,
                color: color,
              )),
        ),
      ),
    );
  }
}
