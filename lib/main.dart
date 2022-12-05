import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vybe/constants.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        checkboxTheme: CheckboxThemeData(
          // checkColor: MaterialStateProperty.all(kdpurprle),
          fillColor: MaterialStateProperty.all(
            Color(0xffF9F9F9).withOpacity(0.10),
          ),
        ),
        scaffoldBackgroundColor: Color(0xff020202),
      ),
    ),
  );
}
