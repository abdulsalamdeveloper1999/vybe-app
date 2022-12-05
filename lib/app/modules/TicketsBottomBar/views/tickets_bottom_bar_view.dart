import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../Widgets/my_text.dart';
import '../../../../Widgets/seach_field.dart';
import '../../../../constants.dart';
import '../../../../weight.dart';
import '../controllers/tickets_bottom_bar_controller.dart';

class TicketsBottomBarView extends StatelessWidget {
// <TicketsBottomBarController>
  @override
  Widget build(BuildContext context) {
    //MeidaQuery
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
            body: Column(
              children: [
                SizedBox(height: h * 0.02),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Row(
                    children: [
                      SizedBox(width: w / 17.5),
                      Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: kwhite,
                      ),
                      SizedBox(width: w * 0.02),
                      MyText(
                        text: "My Tickets",
                        size: 16 * sp,
                        weight: kfour,
                        color: kwhite,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: h * 0.01),
                Divider(
                  color: klpurprle,
                  thickness: 2,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w / 17.5),
                  child: Column(
                    children: [
                      SizedBox(height: h * 0.02),
                      Container(
                        height: h * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: klpurprle,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 6,
                              child: Container(
                                padding: EdgeInsets.only(left: w * 0.03),
                                height: Get.height,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: kdpurprle,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: w * 0.03),
                                      height: h * 0.12,
                                      width: Get.width / 3.2,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color(0xff775483),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        MyText(
                                          text: "BLACKOUT",
                                          size: 18 * sp,
                                          weight: kseven,
                                          color: kwhite,
                                        ),
                                        MyText(
                                          text: "From £5",
                                          size: 11 * sp,
                                          weight: kfive,
                                          color: kwhite,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: w * 0.03),
                            Expanded(
                              flex: 1,
                              child: MyText(
                                text: "24\n08",
                                size: 24 * sp,
                                weight: kseven,
                                color: kwhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: h * 0.02),
                      Container(
                        height: h * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: klpurprle,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 6,
                              child: Container(
                                padding: EdgeInsets.only(left: w * 0.03),
                                height: Get.height,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: kdpurprle,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: w * 0.03),
                                      height: h * 0.12,
                                      width: Get.width / 3.2,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color(0xff775483),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        MyText(
                                          text: "BLACKOUT",
                                          size: 18 * sp,
                                          weight: kseven,
                                          color: kwhite,
                                        ),
                                        MyText(
                                          text: "Tickets Sold",
                                          size: 11 * sp,
                                          weight: kfive,
                                          color: Color(0xffFF5A5F),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: w * 0.03),
                            Expanded(
                              flex: 1,
                              child: MyText(
                                text: "24\n08",
                                size: 24 * sp,
                                weight: kseven,
                                color: kwhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
