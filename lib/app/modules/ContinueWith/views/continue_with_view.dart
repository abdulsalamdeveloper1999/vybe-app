import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vybe/Widgets/elevated_button_widget.dart';
import 'package:vybe/Widgets/login_field.dart';
import 'package:vybe/Widgets/my_text.dart';
import 'package:vybe/app/routes/app_pages.dart';
import 'package:vybe/constants.dart';
import 'package:vybe/weight.dart';

bool visible = true;

List icons = [
  "assets/icons/apple.png",
  'assets/icons/google.png',
  'assets/icons/facebook.png'
];

class ContinueWithView extends StatefulWidget {
  @override
  State<ContinueWithView> createState() => _ContinueWithViewState();
}

class _ContinueWithViewState extends State<ContinueWithView> {
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
            padding: EdgeInsets.symmetric(horizontal: w / 15.5),
            child: Column(
              children: [
                SizedBox(height: h * 0.1),
                Image.asset(
                  "assets/icons/logo.png",
                  height: h * 0.4,
                ),
                SizedBox(height: h * 0.1),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.LOGIN);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: w / 20),
                    height: h * 0.078,
                    decoration: BoxDecoration(
                      color: klpurprle,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Icon(
                            Icons.email_sharp,
                            color: kwhite,
                          ),
                        ),
                        SizedBox(width: w * 0.02),
                        Expanded(
                          flex: 3,
                          child: MyText(
                            text: "Continue with Email",
                            size: 16 * sp,
                            weight: kfour,
                            color: kwhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: h * 0.1),
                MyText(
                  text: "Or Continue with",
                  size: 12 * sp,
                  weight: ksix,
                  color: kwhite,
                ),
                SizedBox(height: h * 0.025),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      icons.length,
                      (index) => Container(
                        margin: EdgeInsets.only(left: w * 0.05),
                        height: h * 0.1,
                        width: h * 0.1,
                        decoration: BoxDecoration(
                          color: kdpurprle,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Image.asset(
                              "${icons[index]}",
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.BOTTOM);
                  },
                  child: MyText(
                    text: "Skip, Visit as Guest",
                    size: 16 * sp,
                    weight: ksix,
                    color: kwhite,
                  ),
                ),
                SizedBox(height: h * 0.01),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
