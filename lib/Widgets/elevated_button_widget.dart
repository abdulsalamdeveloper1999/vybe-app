import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vybe/constants.dart';

import '../weight.dart';
import 'my_text.dart';

class MyButton extends StatelessWidget {
  var bgcolor;
  final text;
  var textColor;
  VoidCallback? onPress;

  MyButton(
      {Key? key,
      required this.text,
      this.bgcolor = kdpurprle,
      this.textColor,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return Container(
      height: h * 0.07,
      width: w,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xff4811AA).withOpacity(0.60),
          offset: Offset(0, 13),
          blurRadius: 52,
          spreadRadius: 0,
        )
      ]),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(55),
          ),
          elevation: 0,
          backgroundColor: bgcolor,
        ),
        onPressed: onPress,
        child: Center(
          child: MyText(
            align: TextAlign.center,
            text: '$text',
            size: 14 * sp,
            weight: kfive,
            color: Colors.white,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
