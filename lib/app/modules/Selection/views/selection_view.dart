import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vybe/Widgets/elevated_button_widget.dart';
import 'package:vybe/app/routes/app_pages.dart';
import 'package:vybe/constants.dart';

class Selection extends StatefulWidget {
  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: w / 16),
            child: Column(
              children: [
                SizedBox(height: h * 0.25),
                Image.asset(
                  "assets/icons/logo.png",
                  height: h * 0.4,
                ),
                Spacer(),
                MyButton(
                  text: 'Login',
                  bgcolor: klpurprle,
                  textColor: Colors.white,
                  onPress: () {
                    Get.toNamed(Routes.CONTINUE_WITH);
                  },
                ),
                SizedBox(height: h * 0.025),
                MyButton(
                  text: 'Sign Up',
                  bgcolor: kdpurprle,
                  textColor: Colors.white,
                  onPress: () {
                    Get.toNamed(Routes.SIGN_UP);
                  },
                ),
                SizedBox(height: h * 0.025),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
