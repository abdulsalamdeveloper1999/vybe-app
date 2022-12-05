import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vybe/Widgets/my_text.dart';
import 'package:vybe/app/routes/app_pages.dart';
import '../../../../Widgets/seach_field.dart';
import '../../../../constants.dart';
import '../../../../weight.dart';
import '../../SearchBottomBar/views/filter_container.dart';
import '../controllers/restaurant_card_controller.dart';

List rowImages = [
  'assets/icons/first.png',
  'assets/icons/two.png',
  'assets/icons/three.png',
  'assets/icons/four.png',
  'assets/icons/five.png',
  'assets/icons/six.png',
];

RestaurantCardController controller = Get.put(RestaurantCardController());

class RestaurantCardView extends GetView<RestaurantCardController> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  ...List.generate(
                    2,
                    (index) => Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: h * 0.02),
                          padding: EdgeInsets.only(right: w * 0.015),
                          height: h * 0.2,
                          width: w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: klpurprle,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              MyText(
                                text: "24\n08",
                                size: 24 * sp,
                                weight: kseven,
                                color: kwhite,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: h * 0.14,
                          left: w - 170,
                          child: Container(
                            padding: EdgeInsets.only(
                              right: w * 0.02,
                              top: h * 0.015,
                            ),
                            height: h * 0.06,
                            width: w * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12),
                              ),
                              color: Color(0xff8B29C4),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                MyText(
                                  text: "From",
                                  size: 7 * sp,
                                  weight: kseven,
                                  color: Color(0xffCAC5D6),
                                ),
                                MyText(
                                  text: "£5",
                                  size: 7 * sp,
                                  weight: kseven,
                                  color: Color(0xffCAC5D6),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: w * 0.03),
                          height: h * 0.2,
                          width: w * 0.75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: kdpurprle,
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: w * 0.03),
                                height: h * 0.18,
                                width: w * 0.23,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xff775483),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: h * 0.01),
                                  SizedBox(
                                    width: w * 0.46,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 5,
                                          child: MyText(
                                            text: "BRAIO",
                                            size: 18 * sp,
                                            weight: kseven,
                                            color: kwhite,
                                          ),
                                        ),
                                        Expanded(
                                          child: MyText(
                                            text: "21+",
                                            size: 9 * sp,
                                            weight: kseven,
                                            color: kwhite,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  MyText(
                                    text: "Promoter Name",
                                    size: 11 * sp,
                                    weight: kfive,
                                    color: kwhite,
                                  ),
                                  SizedBox(height: h * 0.01),
                                  Row(
                                    children: [
                                      ...List.generate(
                                        rowImages.length,
                                        (index) => Container(
                                          padding: EdgeInsets.all(4),
                                          margin:
                                              EdgeInsets.only(right: w * 0.01),
                                          height: h * 0.035,
                                          width: w * 0.055,
                                          decoration: BoxDecoration(
                                            color: kwhite,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                              "${rowImages[index]}"),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: h * 0.01),
                                  Row(
                                    children: [
                                      Container(
                                        height: h * 0.05,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: w * 0.03,
                                        ),
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0xff4811AA)
                                                  .withOpacity(0.60),
                                              offset: Offset(0, 13),
                                              blurRadius: 15,
                                              spreadRadius: 0,
                                            )
                                          ],
                                          color: klpurprle,
                                          borderRadius: BorderRadius.circular(
                                            100,
                                          ),
                                        ),
                                        child: Center(
                                          child: MyText(
                                            text: "Buy Tickets",
                                            size: 14 * sp,
                                            weight: ksix,
                                            color: kwhite,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: w * 0.02),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          MyText(
                                            text: "Isleworth",
                                            size: 7 * sp,
                                            weight: kseven,
                                            color: Color(0xffCAC5D6),
                                          ),
                                          MyText(
                                            text: "22:30 - 03:00",
                                            size: 7 * sp,
                                            weight: kfive,
                                            color: kwhite,
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  FloatingActionButton(
                    backgroundColor: klpurprle,
                    onPressed: () {
                      Get.toNamed(Routes.BOTTOM);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: kwhite,
                    ),
                  ),
                  SizedBox(height: h * 0.09),
                ],
              ),
            )),
      ),
    );
  }
}
