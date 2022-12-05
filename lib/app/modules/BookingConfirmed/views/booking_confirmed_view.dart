import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:vybe/Widgets/elevated_button_widget.dart';
import 'package:vybe/Widgets/my_text.dart';
import 'package:vybe/constants.dart';
import 'package:vybe/weight.dart';

import '../controllers/booking_confirmed_controller.dart';

class BookingConfirmedView extends GetView<BookingConfirmedController> {
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: w / 17.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: h * 0.02),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/icons/square.png"),
                    ),
                    SizedBox(height: h * 0.02),
                    Center(
                      child: Image.asset(
                        "assets/icons/qr.png",
                        height: h * 0.4,
                      ),
                    ),
                    SizedBox(height: h * 0.02),
                    Center(
                      child: Column(
                        children: [
                          MyText(
                            text: "Booking Confirmed",
                            size: 24 * sp,
                            weight: ksix,
                            color: kwhite,
                          ),
                          MyText(
                            text: "Venue and Booking Details",
                            size: 14 * sp,
                            weight: ksix,
                            color: kwhite,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: h * 0.02),
                    MyText(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis eget lobortis amet amet mi sagittis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis eget lobortis amet amet mi sagittis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis eget lobortis amet amet mi sagittis.Lorem ipsum dolor sit amet, consectetur.",
                      size: 12 * sp,
                      weight: kfour,
                      color: kwhite,
                    ),
                    SizedBox(height: h * 0.01),
                    MyButton(
                      text: "Share",
                      onPress: () {},
                      bgcolor: klpurprle,
                    ),
                    SizedBox(height: h * 0.02),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
