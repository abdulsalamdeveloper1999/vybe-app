import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:vybe/Widgets/elevated_button_widget.dart';
import '../../../../Widgets/my_text.dart';
import '../../../../constants.dart';
import '../../../../weight.dart';
import '../../ProfileBottomBar/controllers/profile_bottom_bar_controller.dart';
import 'dart:ui' show ImageFilter;

ProfileBottomBarController controller = Get.put(ProfileBottomBarController());

// List<setdataCheck> getDataCheck=[
//   setdataCheck(checkBox: checkBox, title: title)
// ];

final List<String> genderItems = [
  'Club',
  'Bar',
];

String? selectedValue;

List checkText = [
  'Date Night',
  'Last-minute vide',
  'Insta spot',
  'Early birds',
  'Brunches',
  'Morning Vibes',
  'Casual vibes',
  'Pre-drinks',
  'Intimate club',
];

List checkTextTwo = [
  'Large Club',
  'Dress up',
  'Ladies Night',
  'VIP',
  'Birthday Deals',
  '18+ Students',
  '21+ Students',
  '25+ Students',
  '30+ Students',
];

class FilterContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;

    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: GestureDetector(
        onTap: () {
          showMaterialModalBottomSheet(
            enableDrag: false,
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            context: context,
            builder: (context) => BottomSheetContent(),
          );
        },
        child: Container(
          height: h * 0.09,
          decoration: BoxDecoration(
            color: Color(0xffF75E7E),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: MyText(
              text: "Filter",
              size: 16 * sp,
              weight: kfour,
              color: kwhite,
            ),
          ),
        ),
      ),
    );
  }
}

class BottomSheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: w * 0.04),
      decoration: BoxDecoration(
        color: Color(0xff431675).withOpacity(0.80),
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.only(
        left: w * 0.05,
        right: w * 0.05,
        top: h * 0.05,
        bottom: h * 0.03,
      ),
      child: SingleChildScrollView(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: h * 0.02),
              Row(
                children: [
                  SizedBox(width: w * 0.2),
                  MyText(
                    text: "Search Filter",
                    size: 22 * sp,
                    weight: kseven,
                    color: kwhite,
                  ),
                  SizedBox(width: w * 0.03),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: Color(0xffFFFFFF).withOpacity(0.40),
                    ),
                  ),
                  SizedBox(height: h * 0.01),
                ],
              ),
              SizedBox(height: h * 0.025),
              DropdownButtonFormField2(
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 16 * sp,
                  fontWeight: kfour,
                  color: kwhite,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  filled: true,
                  fillColor: Color(0xffF9F9F9).withOpacity(0.10),
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                ),
                // isExpanded: true,
                hint: MyText(
                  text: "Clubs",
                  size: 16 * sp,
                  weight: kfour,
                  color: kwhite.withOpacity(0.40),
                ),
                icon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: kpink,
                ),
                iconSize: 30,
                buttonHeight: 60,
                buttonPadding: EdgeInsets.only(left: 20, right: 10),
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffF9F9F9).withOpacity(0.10),
                ),
                items: genderItems
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                    .toList(),
                // validator: (value) {
                //   if (value == null) {
                //     return 'Please select gender.';
                //   }
                // },
                onChanged: (value) {
                  //Do something when changing the item if you want.
                },
                onSaved: (value) {
                  selectedValue = value.toString();
                },
              ),
              SizedBox(height: h * 0.01),
              FormWidget(
                  formController: controller.locationController,
                  title: "Location",
                  hintText: 'Type a location ',
                  suffix: Icon(
                    Icons.location_on_rounded,
                    color: kpink,
                  )),
              FormWidget(
                formController: controller.priceController,
                title: "Price",
                hintText: 'Enter Price',
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: FormWidget(
                      active: true,
                      formController: controller.dobController,
                      ontap: () async {
                        // hide keyboard
                        FocusScope.of(context).unfocus();
                        var date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now(),
                          builder: (context, child) {
                            return Theme(
                              data: ThemeData.light().copyWith(
                                primaryColor: klpurprle,
                                accentColor: klpurprle,
                                colorScheme: ColorScheme.light(
                                  primary: klpurprle,
                                ),
                              ),
                              child: child!,
                            );
                          },
                        );
                        controller.dobChanged(date);
                      },
                      title: "Date Range",
                      hintText: 'Feb 13, 2022',
                    ),
                  ),
                  SizedBox(width: w * 0.05),
                  Expanded(
                    child: FormWidget(
                      active: true,
                      formController: controller.dobControllertwo,
                      ontap: () async {
                        // hide keyboard
                        FocusScope.of(context).unfocus();
                        var date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now(),
                          builder: (context, child) {
                            return Theme(
                              data: ThemeData.light().copyWith(
                                primaryColor: klpurprle,
                                accentColor: klpurprle,
                                colorScheme: ColorScheme.light(
                                  primary: klpurprle,
                                ),
                              ),
                              child: child!,
                            );
                          },
                        );
                        controller.dobChangedtwo(date);
                      },
                      title: "",
                      hintText: 'Feb 13, 2022',
                    ),
                  ),
                ],
              ),
              SizedBox(height: h * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...List.generate(
                        checkText.length,
                        (index) => CheckRow(
                          text: '${checkText[index]}',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...List.generate(
                        checkText.length,
                        (index) => CheckRow(
                          text: '${checkTextTwo[index]}',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: h * 0.02),
              MyButton(
                text: "Search",
                onPress: () {},
                bgcolor: klpurprle,
              ),
              SizedBox(height: h * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}

class FormWidget extends StatelessWidget {
  VoidCallback? ontap;
  var active;
  var suffix;
  final title;
  final hintText;
  var formController;
  FormWidget({
    Key? key,
    this.formController,
    this.ontap,
    this.suffix,
    this.active = false,
    required this.title,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          text: "$title",
          size: 10 * sp,
          weight: kseven,
          color: Color(0xff9254D8),
        ),
        SizedBox(height: h * 0.01),
        TextFormField(
          controller: formController,
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 16 * sp,
            fontWeight: kfour,
            color: kwhite,
          ),
          onTap: ontap,
          readOnly: active,
          decoration: InputDecoration(
            suffixIcon: suffix,
            hintStyle: TextStyle(
              fontFamily: "Poppins",
              fontSize: 16 * sp,
              fontWeight: kfour,
              color: kwhite.withOpacity(0.40),
            ),
            hintText: "$hintText",
            filled: true,
            fillColor: Color(0xffF9F9F9).withOpacity(0.10),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(14),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(14),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
        SizedBox(height: h * 0.01),
      ],
    );
  }
}

class CheckRow extends StatefulWidget {
  var text;
  CheckRow({required this.text});

  @override
  State<CheckRow> createState() => _CheckRowState();
}

class _CheckRowState extends State<CheckRow> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return Column(
      children: [
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: 14,
              height: 14,
              color: Color(0xffF9F9F9).withOpacity(0.10),
              child: Checkbox(
                value: value,
                onChanged: (value) {
                  setState(() {
                    this.value = value!;
                  });
                },
              ),
            ),
            SizedBox(width: w * 0.03),
            MyText(
              text: "${widget.text}",
              size: 12 * sp,
              weight: kfour,
              color: kwhite,
            ) //Checkbox
          ],
        ),
        SizedBox(height: h * 0.02)
      ],
    );
  }
}

// class setdataCheck{
//
//   var checkBox;
//   String title;
//
//   setdataCheck({required this.checkBox,required this.title});
// }
