import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vybe/Widgets/backButton.dart';
import 'package:vybe/Widgets/elevated_button_widget.dart';
import 'package:vybe/Widgets/login_field.dart';
import 'package:vybe/Widgets/my_text.dart';
import 'package:vybe/app/modules/Login/controllers/login_controller.dart';
import 'package:vybe/constants.dart';
import 'package:vybe/weight.dart';

import '../../../routes/app_pages.dart';

LoginController controller = Get.put(LoginController());

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                SizedBox(height: h * 0.1),
                Center(
                  child: Image.asset(
                    "assets/icons/logo.png",
                    height: h * 0.4,
                  ),
                ),
                LoginFields(
                  formcontroller: controller.emailController,
                  hintText: " Email",
                  prefixicon: Image.asset("assets/icons/email.png"),
                ),
                SizedBox(height: h * 0.025),
                LoginFields(
                  formcontroller: controller.passController,
                  obSecure: visible,
                  hintText: "Password",
                  prefixicon: Image.asset("assets/icons/password.png"),
                  suffixicon: InkWell(
                    onTap: () {
                      setState(() {
                        visible = !visible;
                      });
                    },
                    child: Icon(
                      Icons.visibility_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: h * 0.02),
                Align(
                  alignment: Alignment.bottomRight,
                  child: MyText(
                    text: "Forgot Password?",
                    size: 11 * sp,
                    weight: kseven,
                    color: kpink,
                  ),
                ),
                SizedBox(height: h * 0.04),
                MyButton(
                  text: "Login",
                  onPress: () {
                    Get.toNamed(Routes.BOTTOM);
                  },
                ),
                SizedBox(height: h * 0.04),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.SIGN_UP);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(
                        text: "Don’t have account ",
                        weight: kfive,
                        color: kwhite,
                        size: 11 * sp,
                      ),
                      MyText(
                        text: "Register Now!",
                        weight: kseven,
                        color: kpink,
                        size: 11 * sp,
                      )
                    ],
                  ),
                ),
                SizedBox(height: h * 0.04),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
