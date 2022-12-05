import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vybe/Widgets/elevated_button_widget.dart';
import 'package:vybe/app/routes/app_pages.dart';

import '../../../../Widgets/my_text.dart';
import '../../../../constants.dart';
import '../../../../weight.dart';
import '../controllers/payment_controller.dart';

PaymentController controller = Get.put(PaymentController());

class PaymentView extends StatelessWidget {
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
                SizedBox(height: h * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w / 17.5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.only(left: w * 0.05, bottom: h * 0.02),
                        height: h * 0.33,
                        width: w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/icons/credit.png",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText(
                              text: "**** 0212",
                              size: 16 * sp,
                              weight: ksix,
                              color: kwhite,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: h * 0.02),
                      FormField(
                        hintText: 'Name on Card',
                        formcontroller: controller.nameoncardController,
                      ),
                      SizedBox(height: h * 0.02),
                      FormField(
                        hintText: 'Card Number',
                        formcontroller: controller.cardNumberController,
                      ),
                      SizedBox(height: h * 0.02),
                      Row(
                        children: [
                          Expanded(
                            child: FormField(
                              hintText: 'Expiration',
                              formcontroller: controller.expirationController,
                            ),
                          ),
                          SizedBox(width: w * 0.03),
                          Expanded(
                            child: FormField(
                              hintText: 'CVV',
                              formcontroller: controller.cvvController,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: h * 0.1),
                      MyButton(
                        text: "Pay",
                        bgcolor: klpurprle,
                        onPress: () {
                          Get.toNamed(Routes.BOOKING_CONFIRMED);
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FormField extends StatelessWidget {
  FormField({required this.hintText, required this.formcontroller});

  final hintText;
  var formcontroller;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return TextFormField(
      style: TextStyle(
        fontSize: 16 * sp,
        fontWeight: kfour,
        color: kwhite,
      ),
      decoration: InputDecoration(
        hintText: "$hintText",
        hintStyle: TextStyle(
          fontSize: 16 * sp,
          fontWeight: kfour,
          color: Color(0xffC4C4C4),
        ),
        filled: true,
        fillColor: Color(0xffF9F9F9).withOpacity(0.20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
