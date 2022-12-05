import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vybe/Widgets/elevated_button_widget.dart';
import 'package:vybe/Widgets/my_text.dart';
import 'package:vybe/constants.dart';
import 'package:vybe/weight.dart';
import '../controllers/profile_bottom_bar_controller.dart';

List socialMedia = [
  'assets/icons/insta.svg',
  'assets/icons/twitter.svg',
  'assets/icons/tiktok.svg',
  'assets/icons/snapchat.svg',
];

class ProfileBottomBarView extends GetView<ProfileBottomBarController> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff2C0258),
              Color(0xff00021B),
            ],
          ),
        ),
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: h * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w / 17.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/icons/square.png",
                          height: h * 0.06,
                        ),
                        Image.asset(
                          "assets/icons/search.png",
                          height: h * 0.06,
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: klpurprle,
                          radius: h * 0.11,
                        ),
                        SizedBox(height: h * 0.01),
                        MyText(
                          text: "@Ghost",
                          size: 16 * sp,
                          weight: ksix,
                          color: kwhite,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: h * 0.05),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w / 17.5),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: MyButton(
                            text: "Follow",
                            onPress: () {},
                            bgcolor: klpurprle,
                          ),
                        ),
                        SizedBox(width: w * 0.02),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(12),
                            height: h * 0.09,
                            width: w * 0.1,
                            decoration: BoxDecoration(
                                color: Color(0xffFF5A5F),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff4811AA).withOpacity(0.60),
                                    offset: Offset(0, 13),
                                    blurRadius: 52,
                                    spreadRadius: 0,
                                  )
                                ]),
                            child: Image.asset("assets/icons/msg.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: h * 0.03),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w / 17.5),
                    child: MyText(
                      text: "Past Vybes",
                      size: 17 * sp,
                      weight: kseven,
                      color: kwhite,
                    ),
                  ),
                  SizedBox(height: h * 0.03),
                  Padding(
                    padding: EdgeInsets.only(left: w / 17.5),
                    child: SizedBox(
                      height: h * 0.081,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: w * 0.03),
                            height: h * 0.091,
                            width: h * 0.081,
                            decoration: BoxDecoration(
                              color: Color(0xff775483),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.03),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w / 17.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(
                          text: "Social Media",
                          size: 17 * sp,
                          weight: kseven,
                          color: kwhite,
                        ),
                        Row(
                          children: [
                            ...List.generate(
                              socialMedia.length,
                              (index) => Padding(
                                padding: EdgeInsets.only(right: w * 0.02),
                                child: SvgPicture.asset(
                                  "${socialMedia[index]}",
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: h * 0.03),
                  Container(
                    padding: EdgeInsets.only(top: h * 0.03),
                    width: w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff000000).withOpacity(0.40),
                    ),
                    child: Column(
                      children: [
                        MyText(
                          text: "Next Event",
                          size: 17 * sp,
                          weight: kseven,
                          color: kwhite,
                        ),
                        SizedBox(height: h * 0.015),
                        Container(
                          height: h * 0.25,
                          width: Get.width / 1.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff775483),
                          ),
                        ),
                        SizedBox(height: h * 0.025),
                        SizedBox(
                          width: Get.width / 1.1,
                          child: MyButton(
                            text: "Buy Now",
                            onPress: () {},
                            bgcolor: klpurprle,
                          ),
                        ),
                        SizedBox(height: h * 0.04),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
