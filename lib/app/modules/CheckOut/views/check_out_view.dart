import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:vybe/app/routes/app_pages.dart';

import '../../../../Widgets/elevated_button_widget.dart';
import '../../../../Widgets/my_text.dart';
import '../../../../constants.dart';
import '../../../../weight.dart';
import '../controllers/check_out_controller.dart';

var count = 0;

class CheckOutView extends StatefulWidget {
  @override
  State<CheckOutView> createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {
  String? applePay;
  String? creditPay;
  List<spaceRow> spacerow = [
    spaceRow(ltext: '1 Black out Ticket', rtext: '£5'),
    spaceRow(ltext: 'Processing Fee', rtext: '£0'),
  ];

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
            body: Column(
              children: [
                SizedBox(height: h * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w / 17.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios_new_outlined,
                              color: kwhite,
                            ),
                          ),
                          SizedBox(width: w * 0.02),
                          MyText(
                            text: "Check out",
                            size: 16 * sp,
                            weight: kfour,
                            color: kwhite,
                          ),
                        ],
                      ),
                      Icon(
                        Icons.more_vert,
                        color: kwhite,
                      )
                    ],
                  ),
                ),
                SizedBox(height: h * 0.01),
                Divider(
                  color: klpurprle,
                  thickness: 2,
                ),
                SizedBox(height: h * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w / 17.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                            text: "Quantity",
                            size: 14 * sp,
                            weight: ksix,
                            color: kwhite,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (count != 0) {
                                      count--;
                                    } else {
                                      count = 0;
                                    }
                                  });
                                },
                                child:
                                    SvgPicture.asset("assets/icons/gback.svg"),
                              ),
                              SizedBox(width: w * 0.025),
                              MyText(
                                text: "$count",
                                size: 14 * sp,
                                weight: ksix,
                                color: kwhite,
                              ),
                              SizedBox(width: w * 0.025),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      count++;
                                    });
                                  },
                                  child: SvgPicture.asset(
                                      "assets/icons/gforward.svg"))
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: h * 0.05),
                      Divider(
                        color: klpurprle,
                        thickness: 1,
                      ),
                      SizedBox(height: h * 0.02),
                      ...List.generate(
                        spacerow.length,
                        (index) => Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: "${spacerow[index].ltext}",
                                  size: 14 * sp,
                                  weight: kfour,
                                  color: Color(0xffD7D0E4),
                                ),
                                MyText(
                                  text: "${spacerow[index].rtext}",
                                  size: 14 * sp,
                                  weight: kfour,
                                  color: Color(0xffD7D0E4),
                                ),
                              ],
                            ),
                            SizedBox(height: h * 0.01)
                          ],
                        ),
                      ),
                      Divider(
                        color: klpurprle,
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                            text: "Total cost",
                            size: 16 * sp,
                            weight: ksix,
                            color: kwhite,
                          ),
                          MyText(
                            text: "£5",
                            size: 16 * sp,
                            weight: ksix,
                            color: kwhite,
                          ),
                        ],
                      ),
                      SizedBox(height: h * 0.05),
                      MyText(
                        text: "Select Payment Method",
                        size: 12 * sp,
                        weight: kseven,
                        color: Color(0xff9254D8),
                      ),
                      SizedBox(height: h * 0.02),
                      Row(
                        children: [
                          Row(
                            children: [
                              Radio(
                                fillColor: MaterialStateColor.resolveWith(
                                  (states) => klpurprle,
                                ),
                                value: "Apple Pay",
                                groupValue: applePay,
                                onChanged: (value) {
                                  setState(() {
                                    applePay = value.toString();
                                  });
                                },
                              ),
                              MyText(
                                text: "Apple Pay",
                                size: 14 * sp,
                                weight: kfour,
                                color: kwhite,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                fillColor: MaterialStateColor.resolveWith(
                                  (states) => klpurprle,
                                ),
                                value: "Credit Card",
                                groupValue: applePay,
                                onChanged: (value) {
                                  setState(() {
                                    applePay = value.toString();
                                  });
                                },
                              ),
                              MyText(
                                text: "Credit Card",
                                size: 14 * sp,
                                weight: kfour,
                                color: kwhite,
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: h * 0.15),
                      MyButton(
                        text: "Pay Now",
                        onPress: () {
                          Get.toNamed(Routes.PAYMENT);
                        },
                        bgcolor: klpurprle,
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class spaceRow {
  final ltext;
  final rtext;

  spaceRow({required this.ltext, required this.rtext});
}
