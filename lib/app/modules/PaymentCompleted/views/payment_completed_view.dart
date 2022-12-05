import 'package:flutter/material.dart';
import 'package:vybe/Widgets/elevated_button_widget.dart';
import '../../../../Widgets/my_text.dart';
import '../../../../constants.dart';
import '../../../../weight.dart';

class PaymentCompletedView extends StatelessWidget {
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
                            text: "Payment",
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
                SizedBox(height: h * 0.09),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w / 17.5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: h * 0.2),
                      Image.asset(
                        "assets/icons/complt.png",
                        height: h * 0.17,
                      ),
                      SizedBox(height: h * 0.02),
                      MyText(
                        align: TextAlign.center,
                        text: "Checkout Successfully\nCompleted",
                        size: 20 * sp,
                        weight: kfive,
                        color: kwhite,
                      ),
                      SizedBox(height: h * 0.2),
                      MyButton(
                        text: "Back to Checkout",
                        onPress: () {},
                        bgcolor: klpurprle,
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
