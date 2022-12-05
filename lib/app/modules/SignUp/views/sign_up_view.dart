import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vybe/Widgets/backButton.dart';
import 'package:vybe/app/modules/SignUp/controllers/sign_up_controller.dart';
import 'package:vybe/app/routes/app_pages.dart';
import 'package:vybe/constants.dart';

import '../../../../Widgets/elevated_button_widget.dart';
import '../../../../Widgets/login_field.dart';
import '../../../../Widgets/my_text.dart';
import '../../../../weight.dart';

SignUpController controller = Get.put(SignUpController());

class SignUpView extends StatefulWidget {
  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: w / 15.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyBackButton(),
                SizedBox(height: h * 0.01),
                Center(
                  child: Image.asset(
                    "assets/icons/logo.png",
                    height: h * 0.4,
                  ),
                ),
                LoginFields(
                  formcontroller: controller.fnameController,
                  hintText: "First Name",
                  prefixicon: Image.asset("assets/icons/user.png"),
                ),
                SizedBox(height: h * 0.02),
                LoginFields(
                  formcontroller: controller.lnameController,
                  hintText: "Last Name",
                  prefixicon: Image.asset("assets/icons/user.png"),
                ),
                SizedBox(height: h * 0.02),
                LoginFields(
                  formcontroller: controller.emailController,
                  hintText: "Email Address",
                  prefixicon: Image.asset("assets/icons/email.png"),
                ),
                SizedBox(height: h * 0.02),
                LoginFields(
                  obSecure: visible,
                  formcontroller: controller.passController,
                  hintText: "Type password here",
                  prefixicon: Image.asset("assets/icons/password.png"),
                  suffixicon: GestureDetector(
                    onTap: () {
                      setState(() {
                        visible = !visible;
                      });
                    },
                    child: Icon(
                      Icons.visibility_outlined,
                      color: kwhite,
                      size: 25,
                    ),
                  ),
                ),
                SizedBox(height: h * 0.04),
                MyButton(
                  text: "Next",
                  onPress: () {
                    Get.toNamed(Routes.REGISTER);
                  },
                  bgcolor: klpurprle,
                ),
                SizedBox(height: h * 0.04),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.LOGIN);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(
                        text: "Already have account  ",
                        weight: kfive,
                        color: kwhite,
                        size: 11 * sp,
                      ),
                      MyText(
                        text: "Login Now!",
                        weight: kseven,
                        color: kpink,
                        size: 11 * sp,
                      )
                    ],
                  ),
                ),
                SizedBox(height: h * 0.04)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
