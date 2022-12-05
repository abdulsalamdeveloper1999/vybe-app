import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:vybe/Widgets/elevated_button_widget.dart';
import 'package:vybe/Widgets/my_text.dart';
import 'package:vybe/constants.dart';
import 'package:vybe/weight.dart';

import '../controllers/event_host_page_controller.dart';

List icon = [
  'assets/icons/dm.svg',
  'assets/icons/cmnt.svg',
  'assets/icons/camera.svg',
];

class EventHostPageView extends GetView<EventHostPageController> {
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
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: h * 0.005),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w / 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: SvgPicture.asset("assets/icons/back.svg"),
                        ),
                        MyText(
                          text: "VYBE EVENT",
                          size: 22 * sp,
                          weight: kseven,
                          color: kwhite,
                        ),
                        SizedBox(width: w * 0.08),
                      ],
                    ),
                  ),
                  SizedBox(height: h * 0.02),
                  Stack(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.only(bottom: h * 0.02, left: w / 17.4),
                        height: h * 0.5,
                        width: w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff110029),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ...List.generate(
                              icon.length,
                              (index) => Row(
                                children: [
                                  SvgPicture.asset("${icon[index]}"),
                                  SizedBox(width: w * 0.05),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: h * 0.42,
                        width: w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff000000),
                          image: DecorationImage(
                            image: AssetImage("assets/icons/logoB.png"),
                            scale: 4.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.02),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: w / 17.4, vertical: h * 0.03),
                    height: h / 2,
                    width: w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
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
                        SizedBox(height: h * 0.01),
                        Container(
                          height: h * 0.3,
                          width: w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xff775483),
                          ),
                        ),
                        SizedBox(height: h * 0.02),
                        MyButton(
                          text: "Buy Now",
                          onPress: () {},
                          bgcolor: klpurprle,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: h * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w / 17.4),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyText(
                              text: "Upcoming Events",
                              size: 17 * sp,
                              weight: kseven,
                              color: kwhite,
                            ),
                            MyText(
                              text: "See All",
                              size: 14 * sp,
                              weight: kfive,
                              color: kpink,
                            ),
                          ],
                        ),
                        SizedBox(height: h * 0.02),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: h * 0.23,
                                decoration: BoxDecoration(
                                  color: klpurprle,
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        right: w * 0.02,
                                        bottom: h * 0.005,
                                      ),
                                      height: Get.height,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: klpurprle,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          MyText(
                                            text: "24\n08",
                                            color: kwhite,
                                            weight: kseven,
                                            size: 14 * sp,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                        left: w * 0.03,
                                        bottom: h * 0.01,
                                      ),
                                      height: Get.height,
                                      width: w * 0.33,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: kdpurprle,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          MyText(
                                            text: "BLACKOUT",
                                            size: 14 * sp,
                                            weight: kseven,
                                            color: kwhite,
                                          ),
                                          MyText(
                                            text: "From £5",
                                            size: 8 * sp,
                                            weight: kfive,
                                            color: Color(0xffCAC5D6),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: h * 0.15,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color(0xff775483),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: w * 0.03),
                            Expanded(
                              child: Container(
                                height: h * 0.23,
                                decoration: BoxDecoration(
                                  color: klpurprle,
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        right: w * 0.01,
                                        bottom: h * 0.005,
                                      ),
                                      height: Get.height,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: klpurprle,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          MyText(
                                            text: "24\n08",
                                            color: kwhite,
                                            weight: kseven,
                                            size: 14 * sp,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                        left: w * 0.03,
                                        bottom: h * 0.01,
                                      ),
                                      height: Get.height,
                                      width: w * 0.33,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: kdpurprle,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          MyText(
                                            text: "BLACKOUT",
                                            size: 14 * sp,
                                            weight: kseven,
                                            color: kwhite,
                                          ),
                                          MyText(
                                            text: "From £5",
                                            size: 8 * sp,
                                            weight: kfive,
                                            color: Color(0xffCAC5D6),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: h * 0.15,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color(0xff775483),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: h * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyText(
                              text: "Past Events",
                              size: 17 * sp,
                              weight: kseven,
                              color: kwhite,
                            ),
                            MyText(
                              text: "See All",
                              size: 14 * sp,
                              weight: kfive,
                              color: kpink,
                            ),
                          ],
                        ),
                        SizedBox(height: h * 0.02),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: h * 0.22,
                                width: Get.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: kdpurprle,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: h * 0.16,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color(0xff775483),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: MyText(
                                        text: "BLACKOUT",
                                        size: 14 * sp,
                                        weight: kseven,
                                        color: kwhite,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: w * 0.03),
                            Expanded(
                              child: Container(
                                height: h * 0.22,
                                width: Get.width,
                                color: Colors.transparent,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: h * 0.02),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
