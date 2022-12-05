import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../Widgets/my_text.dart';
import '../../../../constants.dart';
import '../../../../weight.dart';
import '../controllers/packages_controller.dart';

class PackagesView extends GetView<PackagesController> {
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
                            text: "Packages",
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
                SizedBox(height: h * 0.01),
                ...List.generate(
                  prices.length,
                  (index) => PackageContainer(
                    text: 'Package ${index + 1}',
                    prices: '${prices[index]}',
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class PackageContainer extends StatelessWidget {
  PackageContainer({
    Key? key,
    required this.text,
    required this.prices,
  }) : super(key: key);

  final text;
  final prices;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: w * 0.02,
        vertical: h * 0.02,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: w / 17.5,
        vertical: h * 0.015,
      ),
      height: h * 0.20,
      width: w,
      decoration: BoxDecoration(
        color: klpurprle,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: w * 0.02),
            height: h,
            width: w * 0.2,
            decoration: BoxDecoration(
              color: Color(0xff775483),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          SizedBox(
            width: w / 1.6,
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: "${text}",
                      size: 18 * sp,
                      weight: kseven,
                      color: kwhite,
                    ),
                    MyText(
                      text: "$prices",
                      size: 18 * sp,
                      weight: kseven,
                      color: kwhite,
                    ),
                  ],
                ),
                MyText(
                  text:
                      "Lorem ipsum dolor sit amet,consectetur\nadipiscing elit. Venenatis eget lobortis amet\namet mi sagittis. Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
                  size: 9 * sp,
                  weight: kfive,
                  color: kwhite,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List prices = ['£25PP', '£10PP', '£15PP'];
