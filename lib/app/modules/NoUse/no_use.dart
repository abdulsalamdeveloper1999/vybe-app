import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vybe/Widgets/elevated_button_widget.dart';
import 'package:vybe/app/routes/app_pages.dart';

class NoUse extends StatefulWidget {
  const NoUse({Key? key}) : super(key: key);

  @override
  State<NoUse> createState() => _NoUseState();
}

class _NoUseState extends State<NoUse> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                MyButton(
                  text: 'CheckOut',
                  onPress: () {
                    Get.toNamed(Routes.CHECK_OUT);
                  },
                ),
                SizedBox(height: 20),
                MyButton(
                  text: 'Restaurant card',
                  onPress: () {
                    Get.toNamed(Routes.RESTAURANT_CARD);
                  },
                ),
                SizedBox(height: 20),
                MyButton(
                  text: 'Event Host Page',
                  onPress: () {
                    Get.toNamed(Routes.EVENT_HOST_PAGE);
                  },
                ),
                SizedBox(height: 20),
                MyButton(
                  text: 'Event Page',
                  onPress: () {
                    Get.toNamed(Routes.EVENT_PAGE);
                  },
                ),
                SizedBox(height: 20),
                MyButton(
                  text: 'Buy Ticket',
                  onPress: () {
                    Get.toNamed(Routes.BUY_TICKETS);
                  },
                ),
                SizedBox(height: 20),
                MyButton(
                  text: 'Lounge page',
                  onPress: () {
                    Get.toNamed(Routes.LOUNGE_PAGE);
                  },
                ),
                SizedBox(height: 20),
                MyButton(
                  text: 'Lounge package',
                  onPress: () {
                    Get.toNamed(Routes.PACKAGES);
                  },
                ),
                SizedBox(height: 20),
                MyButton(
                  text: 'Profile Follow',
                  onPress: () {
                    Get.toNamed(Routes.FOLLOW_PROFILE);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
