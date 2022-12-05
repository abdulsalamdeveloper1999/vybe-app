import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:vybe/Widgets/elevated_button_widget.dart';
import 'package:vybe/Widgets/my_text.dart';
import 'package:vybe/constants.dart';
import 'package:vybe/weight.dart';
import '../../RestaurantCard/views/restaurant_card_view.dart';
import '../controllers/event_page_controller.dart';

List icon = [
  'assets/icons/dm.svg',
  'assets/icons/cmnt.svg',
  'assets/icons/camera.svg',
];

List icn = [
  'assets/icons/crfront.svg',
  'assets/icons/bus.svg',
];

class EventPageView extends GetView<EventPageController> {
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
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: SvgPicture.asset("assets/icons/back.svg"),
                          ),
                        ),
                        FittedBox(
                          child: MyText(
                            text: "Thirsty Thursday",
                            size: 22 * sp,
                            weight: kseven,
                            color: kwhite,
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/icons/search.png"),
                          ),
                        ),
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
                        padding: EdgeInsets.only(bottom: h * 0.01),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SvgPicture.asset("assets/icons/car.svg"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w / 17.4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                        SizedBox(height: h * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ...List.generate(
                              icn.length,
                              (index) => Row(
                                children: [
                                  SvgPicture.asset("${icn[index]}"),
                                  SizedBox(width: w * 0.02)
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: h * 0.02),
                        MyText(
                          text: "Event Name",
                          size: 22 * sp,
                          weight: kseven,
                          color: kwhite,
                        ),
                        SizedBox(height: h * 0.025),
                        MyText(
                          text:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis eget lobortis amet amet mi sagittis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis eget lobortis amet amet mi sagittis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis eget lobortis amet amet mi sagittis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis eget lobortis amet amet mi sagittis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis eget lobortis amet amet mi sagittis.",
                          size: 12 * sp,
                          weight: kfour,
                          color: kwhite,
                        ),
                        SizedBox(height: h * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ...List.generate(
                              rowImages.length,
                              (index) => Container(
                                padding: EdgeInsets.all(4),
                                margin: EdgeInsets.only(right: w * 0.01),
                                height: h * 0.04,
                                width: w * 0.07,
                                decoration: BoxDecoration(
                                  color: kwhite,
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset("${rowImages[index]}"),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: h * 0.02),
                        MyText(
                          text: "Host",
                          size: 17 * sp,
                          weight: kseven,
                          color: kwhite,
                        ),
                        SizedBox(height: h * 0.02),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          child: Row(
                            children: [
                              ...List.generate(
                                  4,
                                  (index) => Container(
                                        margin:
                                            EdgeInsets.only(right: w * 0.03),
                                        child: Column(
                                          children: [
                                            CircleAvatar(
                                              backgroundImage: AssetImage(
                                                "assets/icons/xoxo.png",
                                              ),
                                            ),
                                            SizedBox(height: h * 0.01),
                                            Container(
                                              height: h * 0.04,
                                              width: w * 0.2,
                                              decoration: BoxDecoration(
                                                color: klpurprle,
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ),
                                              child: Center(
                                                child: MyText(
                                                  text: "Follow",
                                                  size: 16 * sp,
                                                  weight: ksix,
                                                  color: kwhite,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: h * 0.02),
                                          ],
                                        ),
                                      ))
                            ],
                          ),
                        ),
                        SizedBox(height: h * 0.02),
                        MyButton(
                          text: "Buy Tickets",
                          onPress: () {},
                          bgcolor: klpurprle,
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
