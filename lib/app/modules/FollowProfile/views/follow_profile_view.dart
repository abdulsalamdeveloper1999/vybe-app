import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vybe/Widgets/elevated_button_widget.dart';
import 'package:vybe/Widgets/my_text.dart';
import 'package:vybe/constants.dart';
import 'package:vybe/weight.dart';

class FollowProfileView extends StatefulWidget {
  @override
  State<FollowProfileView> createState() => _FollowProfileViewState();
}

class _FollowProfileViewState extends State<FollowProfileView> {
  bool state = false;

  List socialMedia = [
    'assets/icons/insta.svg',
    'assets/icons/twitter.svg',
    'assets/icons/tiktok.svg',
    'assets/icons/snapchat.svg',
  ];

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
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: h * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w / 17.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/icons/square.png",
                          height: h * 0.06,
                        ),
                        Image.asset(
                          "assets/icons/search.png",
                          height: h * 0.06,
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              child: CircleAvatar(
                                backgroundColor: klpurprle,
                                radius: h * 0.11,
                              ),
                            ),
                            Positioned(
                              bottom: h * 0.09,
                              left: w * 0.13,
                              child: SvgPicture.asset(
                                "assets/icons/add.svg",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: h * 0.01),
                        MyText(
                          text: "@Ghost",
                          size: 16 * sp,
                          weight: ksix,
                          color: kwhite,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: h * 0.05),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.15),
                    height: h * 0.15,
                    color: Color(0xff000000).withOpacity(0.20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyText(
                              text: "Following",
                              size: 16 * sp,
                              weight: kfive,
                              color: Color(0xffA64FEA),
                            ),
                            MyText(
                              text: "100",
                              size: 16 * sp,
                              weight: kfive,
                              color: kwhite,
                            ),
                          ],
                        ),
                        VerticalDivider(
                          indent: 20,
                          endIndent: 20,
                          color: kwhite,
                          thickness: 1,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyText(
                              text: "Followed",
                              size: 16 * sp,
                              weight: kfive,
                              color: Color(0xffA64FEA),
                            ),
                            MyText(
                              text: "07",
                              size: 16 * sp,
                              weight: kfive,
                              color: kwhite,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: h * 0.03),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w / 17.5),
                    child: MyText(
                      text: "Past Vybes",
                      size: 17 * sp,
                      weight: kseven,
                      color: kwhite,
                    ),
                  ),
                  SizedBox(height: h * 0.03),
                  Padding(
                    padding: EdgeInsets.only(left: w / 17.5),
                    child: SizedBox(
                      height: h * 0.21,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: w * 0.05),
                            height: h * 0.21,
                            width: w * 0.32,
                            decoration: BoxDecoration(
                              color: Color(0xff431675),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: h * 0.14,
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                    color: Color(0xff775483),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: w * 0.02,
                                  ),
                                  child: SwitchWidget(),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.03),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: w / 17.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Transform.scale(
                                scale: 0.6,
                                child: CupertinoSwitch(
                                  value: state,
                                  onChanged: (value) {
                                    state = value;
                                    setState(
                                      () {},
                                    );
                                  },
                                  thumbColor: CupertinoColors.white,
                                  activeColor: CupertinoColors.activeGreen,
                                ),
                              ),
                              MyText(
                                text: "Social Media",
                                size: 17 * sp,
                                weight: kseven,
                                color: kwhite,
                              ),
                            ],
                          ),
                          SizedBox(width: w * 0.15),
                          Row(
                            children: [
                              ...List.generate(
                                socialMedia.length,
                                (index) => Padding(
                                  padding: EdgeInsets.only(right: w * 0.02),
                                  child: Stack(
                                    children: [
                                      SvgPicture.asset(
                                        "${socialMedia[index]}",
                                      ),
                                      Positioned(
                                        left: w * 0.042,
                                        bottom: h * 0.028,
                                        child: SvgPicture.asset(
                                          'assets/icons/check.svg',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.03),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w / 17.4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                          color: klpurprle,
                        ),
                        SizedBox(height: h * 0.03),
                        ...List.generate(
                          rowC.length,
                          (index) => Container(
                            margin: EdgeInsets.only(
                              bottom: h * 0.015,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: "${rowC[index].ltext}",
                                  size: 12 * sp,
                                  weight: kseven,
                                  color: Color(0xff8B29C4),
                                ),
                                MyText(
                                  text: "${rowC[index].rlext}",
                                  size: 12 * sp,
                                  weight: kseven,
                                  color: kwhite,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        Divider(
                          color: klpurprle,
                        ),
                        SizedBox(height: h * 0.01),
                        MyText(
                          text: "Past Vybes",
                          size: 17 * sp,
                          weight: kseven,
                          color: kwhite,
                        ),
                        SizedBox(height: h * 0.02),
                        PastVybes(
                          leftText: 'Copy Events To Calenders',
                        ),
                        PastVybes(
                          leftText: 'Hide Next Vybe',
                        ),
                        SizedBox(height: h * 0.015),
                        MyText(
                          text: "Support",
                          size: 17 * sp,
                          weight: kseven,
                          color: kwhite,
                        ),
                        SizedBox(height: h * 0.02),
                        Row(
                          children: [
                            Icon(
                              Icons.email_sharp,
                              color: Color(0xff8B29C4),
                              size: 35,
                            ),
                            SizedBox(width: w * 0.01),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MyText(
                                    text:
                                        "For Customer Services Please Contact",
                                    size: 12 * sp,
                                    weight: kfive,
                                    color: kwhite,
                                  ),
                                  MyText(
                                    text: "Support@VybeApp.CO.UK",
                                    size: 12 * sp,
                                    weight: kfive,
                                    color: kwhite,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: h * 0.02),
                        MyText(
                          text: "About",
                          size: 17 * sp,
                          weight: kseven,
                          color: kwhite,
                        ),
                        SizedBox(height: h * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ...List.generate(
                                about.length,
                                (index) => Row(
                                      children: [
                                        SvgPicture.asset(
                                          "${about[index]}",
                                        ),
                                        SizedBox(width: w * 0.03)
                                      ],
                                    ))
                          ],
                        ),
                        SizedBox(height: h * 0.03),
                        MyButton(
                          text: "Close Account",
                          onPress: () {},
                          bgcolor: Color(0xffFF5A5F),
                        ),
                        SizedBox(height: h * 0.04),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({Key? key}) : super(key: key);

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: MyText(
            text: "BLACKOUT",
            size: 12 * sp,
            weight: kseven,
            color: kwhite,
          ),
        ),
        Expanded(
          child: Transform.scale(
            scale: 0.6,
            child: CupertinoSwitch(
              value: state,
              onChanged: (value) {
                state = value;
                setState(
                  () {},
                );
              },
              thumbColor: CupertinoColors.white,
              activeColor: CupertinoColors.activeGreen,
            ),
          ),
        ),
      ],
    );
  }
}

class RowWidget {
  final ltext;
  final rlext;

  RowWidget({required this.ltext, required this.rlext});
}

List<RowWidget> rowC = [
  RowWidget(ltext: 'Full Name', rlext: 'NW1'),
  RowWidget(ltext: 'Location', rlext: 'Lewis Kingston'),
  RowWidget(ltext: 'Email', rlext: 'ghost@gmail.com'),
  RowWidget(ltext: 'Phone Number', rlext: '07867654356'),
  RowWidget(ltext: 'Username', rlext: '@Ghost'),
  RowWidget(ltext: 'Password', rlext: '***********'),
];

class PastVybes extends StatefulWidget {
  PastVybes({required this.leftText});

  final leftText;

  @override
  State<PastVybes> createState() => _PastVybesState();
}

class _PastVybesState extends State<PastVybes> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(
          text: "${widget.leftText}",
          size: 12 * sp,
          weight: kseven,
          color: kwhite,
        ),
        Transform.scale(
          scale: 0.6,
          child: CupertinoSwitch(
            value: state,
            onChanged: (value) {
              state = value;
              setState(
                () {},
              );
            },
            thumbColor: CupertinoColors.white,
            activeColor: CupertinoColors.activeGreen,
          ),
        ),
      ],
    );
  }
}

List about = [
  'assets/icons/tandc.svg',
  'assets/icons/version.svg',
  'assets/icons/privacy.svg',
];
