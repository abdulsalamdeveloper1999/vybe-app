import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vybe/Widgets/my_text.dart';
import 'package:vybe/app/routes/app_pages.dart';

import '../../../../Widgets/seach_field.dart';
import '../../../../constants.dart';
import '../../../../weight.dart';
import '../controllers/search_bottom_bar_controller.dart';
import 'filter_container.dart';

SearchBottomBarController controller = Get.put(SearchBottomBarController());

class SearchBottomBarView extends StatelessWidget {
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
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: w / 17.5),
              child: Column(
                children: [
                  SizedBox(height: h * 0.02),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: SearchField(
                          controller: controller.searchController,
                        ),
                      ),
                      SizedBox(width: w * 0.02),
                      Expanded(
                        child: FilterContainer(),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.02),
                  Container(
                    padding: EdgeInsets.only(right: w * 0.01),
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
                                  width: Get.width / 3.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xff775483),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                        SizedBox(width: w * 0.025),
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
                    padding: EdgeInsets.only(right: w * 0.01),
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
                                  width: Get.width / 3.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xff775483),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                        SizedBox(width: w * 0.025),
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
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: FloatingActionButton(
                      backgroundColor: klpurprle,
                      onPressed: () {
                        Get.toNamed(Routes.BOTTOM);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: kwhite,
                        size: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.05),
                ],
              ),
            )),
      ),
    );
  }
}
