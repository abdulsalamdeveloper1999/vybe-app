import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vybe/Widgets/my_text.dart';
import 'package:vybe/constants.dart';
import 'package:vybe/weight.dart';
import '../../../../Widgets/backButton.dart';
import '../../../../Widgets/elevated_button_widget.dart';
import '../../../../Widgets/login_field.dart';
import '../../../routes/app_pages.dart';
import '../controllers/register_controller.dart';

RegisterController controller = Get.put(RegisterController());

final List<String> genderItems = [
  'Male',
  'Female',
];

String? selectedValue;

final _formKey = GlobalKey<FormState>();

class RegisterView extends StatefulWidget {
  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
                SizedBox(height: h * 0.01),
                MyBackButton(),
                SizedBox(height: h * 0.01),
                Center(
                  child: Image.asset(
                    "assets/icons/logo.png",
                    height: h * 0.4,
                  ),
                ),
                DropDown(w, h, sp),
                SizedBox(height: h * 0.02),
                LoginFields(
                  formcontroller: controller.dobController,
                  hintText: "Date of Birth",
                  prefixicon: Image.asset("assets/icons/dob.png"),
                ),
                SizedBox(height: h * 0.02),
                LoginFields(
                  formcontroller: controller.postController,
                  hintText: "Postcode",
                  prefixicon: Image.asset("assets/icons/post.png"),
                ),
                SizedBox(height: h * 0.04),
                MyButton(
                  text: "Register",
                  onPress: () {
                    Get.toNamed(Routes.BOTTOM);
                  },
                  bgcolor: klpurprle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  DropdownButtonFormField2<String> DropDown(double w, double h, double sp) {
    return DropdownButtonFormField2(
      decoration: InputDecoration(
        prefixIcon: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 10,
              color: Color(0xffF75E7E).withOpacity(0.2),
            )
          ]),
          child: Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: SvgPicture.asset(
              "assets/icons/user.svg",
              height: 40,
            ),
          ),
        ),
        isDense: true,
        filled: true,
        fillColor: Color(0xffF9F9F9).withOpacity(0.20),
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      hint: MyText(
        text: "Gender",
        size: 16 * sp,
        weight: kfour,
        color: kwhite,
      ),
      icon: Icon(
        Icons.keyboard_arrow_down_sharp,
        color: kpink,
      ),
      iconSize: 30,
      buttonHeight: 60,
      buttonPadding: EdgeInsets.only(right: 10),
      dropdownDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black,
      ),
      items: genderItems
          .map((item) => DropdownMenuItem<String>(
                value: item,
                child: MyText(
                  text: "$item",
                  size: 16 * sp,
                  weight: kfour,
                  color: kwhite,
                ),
              ))
          .toList(),
      validator: (value) {
        if (value == null) {
          return 'Please select gender.';
        }
      },
      onChanged: (value) {
        //Do something when changing the item if you want.
      },
      onSaved: (value) {
        selectedValue = value.toString();
      },
    );
  }
}
