import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:vybe/Widgets/elevated_button_widget.dart';

import '../../../../Widgets/my_text.dart';
import '../../../../constants.dart';
import '../../../../weight.dart';
import '../../EventHostPage/views/event_host_page_view.dart';
import '../../EventPage/views/event_page_view.dart';
import '../controllers/lounge_page_controller.dart';

class LoungePageView extends GetView<LoungePageController> {
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
                          text: "VYBE LOUNGE",
                          size: 22 * sp,
                          weight: kseven,
                          color: kwhite,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/icons/search.png"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: h * 0.02),
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          bottom: h * 0.02,
                          left: w / 17.4,
                        ),
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
                        padding: EdgeInsets.only(bottom: h * 0.01),
                        height: h * 0.42,
                        width: w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        iconsR.length,
                        (index) => Row(
                          children: [
                            SvgPicture.asset(
                              "${iconsR[index]}",
                            ),
                            SizedBox(width: w * 0.02)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w / 17.5),
                    child: Column(
                      children: [
                        SizedBox(height: h * 0.02),
                        Container(
                          height: h * 0.3,
                          width: w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: kwhite,
                            image: DecorationImage(
                                image: AssetImage("assets/icons/map.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(height: h * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ...List.generate(
                              icn.length,
                              (index) => Row(
                                children: [
                                  SvgPicture.asset("${icn[index]}"),
                                  SizedBox(width: w * 0.025)
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: h * 0.02),
                        MyText(
                          text: "Menu",
                          size: 22 * sp,
                          weight: kseven,
                          color: kwhite,
                        ),
                        Container(
                          padding: EdgeInsets.all(25),
                          height: h * 0.25,
                          width: w,
                          decoration: BoxDecoration(
                            color: klpurprle,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/icons/menu.png",
                            ),
                          ),
                        ),
                        SizedBox(height: h * 0.04),
                        MyButton(text: "Buy Tickets", onPress: () {}),
                        SizedBox(height: h * 0.05),
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

List iconsR = [
  'assets/icons/r1.svg',
  'assets/icons/r2.svg',
  'assets/icons/r3.svg',
  'assets/icons/r4.svg',
  'assets/icons/r5.svg',
];
List icon = [
  'assets/icons/dm.svg',
  'assets/icons/cmnt.svg',
  'assets/icons/camera.svg',
];
