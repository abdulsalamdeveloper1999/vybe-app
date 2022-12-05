import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:vybe/app/modules/NoUse/no_use.dart';
import 'package:vybe/app/routes/app_pages.dart';
import 'package:vybe/constants.dart';
import 'package:vybe/weight.dart';
import '../../../../Widgets/my_text.dart';
import '../../SearchBottomBar/views/filter_container.dart';
import '../controllers/home_controller.dart';
import 'dart:ui' show ImageFilter;

final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = -1;

  var scaffoldKey = GlobalKey<ScaffoldState>();

  List<setData> getData = [
    setData(images: 'assets/icons/xoxo.png', names: 'XOXO Carribean Brunch'),
    setData(images: 'assets/icons/survival.png', names: 'Survival'),
    setData(images: 'assets/icons/xoxo2.png', names: 'XOXO Carribean Brunch'),
    setData(images: 'assets/icons/xoxo3.png', names: 'XOXO Carribean Brunch'),
    setData(images: 'assets/icons/xoxo.png', names: 'XOXO Carribean Brunch'),
  ];

  List drawerTitles = [
    'My Tickets',
    'Contact Us',
    'About Us',
    'Privacy Policy',
    'Settings',
  ];

  @override
  Widget build(BuildContext context) {
    //MeidaQuery
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
            key: scaffoldKey,
            drawer: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: Color(0xff431675).withOpacity(
                  0.80,
                ), //This will change the drawer background to blue.
                //other styles
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
                width: w / 2,
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5.0,
                    sigmaY: 5.0,
                  ),
                  child: Drawer(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: w * 0.03,
                                top: h * 0.03,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  scaffoldKey.currentState?.openEndDrawer();
                                },
                                child: Image.asset(
                                  "assets/icons/square.png",
                                  height: h * 0.06,
                                ),
                              ),
                            ),
                            Center(
                              child: Image.asset(
                                "assets/icons/logoTrans.png",
                                height: h * 0.2,
                              ),
                            ),
                            SizedBox(height: h * 0.03),
                            ...List.generate(
                              drawerTitles.length,
                              (index) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                    index == 0
                                        ? Get.toNamed(Routes.TICKETS_BOTTOM_BAR)
                                        : index == 1
                                            ? Get.to(() => NoUse())
                                            : null;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.only(
                                    left: w * 0.1,
                                    top: h * 0.02,
                                    bottom: h * 0.02,
                                  ),
                                  // height: h * 0.078,
                                  width: Get.width,
                                  color: selectedIndex == index
                                      ? klpurprle
                                      : Colors.transparent,
                                  child: MyText(
                                    text: "${drawerTitles[index]}",
                                    size: 18 * sp,
                                    weight: kfour,
                                    color: kwhite,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: h * 0.06),
                            Padding(
                              padding: EdgeInsets.only(
                                left: w * 0.1,
                                top: h * 0.02,
                                bottom: h * 0.02,
                              ),
                              child: MyText(
                                text: "Log Out",
                                size: 18 * sp,
                                weight: kfour,
                                color: Color(0xffFF5A5F),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: h * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w / 17.5),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            scaffoldKey.currentState?.openDrawer();
                          },
                          child: Image.asset(
                            "assets/icons/square.png",
                            height: h * 0.06,
                          ),
                        ),
                        SizedBox(width: w * 0.02),
                        Expanded(
                          flex: 3,
                          child: TextFormField(
                            readOnly: true,
                            onTap: () {
                              Get.toNamed(Routes.SEARCH_BOTTOM_BAR);
                            },
                            style: TextStyle(
                                fontSize: 16 * sp,
                                fontWeight: kfour,
                                color: Color(0xffAD99D6)),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xff3F217A),
                              hintText: "Search..",
                              hintStyle: TextStyle(
                                  fontSize: 16 * sp,
                                  fontWeight: kfour,
                                  color: Color(0xffAD99D6)),
                              prefixIcon: Icon(
                                Icons.search_rounded,
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: w * 0.02),
                        Expanded(
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
                                child: Icon(
                                  Icons.close,
                                  color: kwhite,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: h * 0.03),
                  Padding(
                    padding: EdgeInsets.only(left: w / 17.5),
                    child: SizedBox(
                      height: h * 0.13,
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: getData.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  height: h * 0.09,
                                  width: h * 0.08,
                                  margin: EdgeInsets.only(right: w * 0.05),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xffFB47FF),
                                        offset: Offset(0, 0),
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                      )
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage(
                                            '${getData[index].images}')),
                                    shape: BoxShape.circle,
                                    color: kdpurprle,
                                    // borderRadius: BorderRadius.circular(125),
                                  ),
                                ),
                                SizedBox(height: h * 0.01),
                                Padding(
                                  padding: EdgeInsets.only(right: w * 0.05),
                                  child: MyText(
                                    align: TextAlign.center,
                                    text: "${getData[index].names}",
                                    size: 7 * sp,
                                    weight: kseven,
                                    color: Color(0xffF6F4FF),
                                  ),
                                )
                              ],
                            );
                          }),
                    ),
                  ),
                  SizedBox(height: h * 0.01),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w / 17.5),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyText(
                              text: "CLUBBING",
                              weight: kseven,
                              color: kwhite,
                              size: 17 * sp,
                            ),
                            MyText(
                              text: "See All",
                              weight: kfive,
                              color: kpink,
                              size: 14 * sp,
                            ),
                          ],
                        ),
                        SizedBox(height: h * 0.01),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: h * 0.23,
                                decoration: BoxDecoration(
                                  color: klpurprle,
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        right: w * 0.01,
                                        bottom: h * 0.005,
                                      ),
                                      height: Get.height,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: klpurprle,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          MyText(
                                            text: "24\n08",
                                            color: kwhite,
                                            weight: kseven,
                                            size: 14 * sp,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                        left: w * 0.03,
                                        bottom: h * 0.01,
                                      ),
                                      height: Get.height,
                                      width: w * 0.34,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: kdpurprle,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          MyText(
                                            text: "BLACKOUT",
                                            size: 14 * sp,
                                            weight: kseven,
                                            color: kwhite,
                                          ),
                                          MyText(
                                            text: "From £5",
                                            size: 8 * sp,
                                            weight: kfive,
                                            color: Color(0xffCAC5D6),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: h * 0.15,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color(0xff775483),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: w * 0.03),
                            Expanded(
                              child: Container(
                                height: h * 0.23,
                                decoration: BoxDecoration(
                                  color: klpurprle,
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        right: w * 0.01,
                                        bottom: h * 0.005,
                                      ),
                                      height: Get.height,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: klpurprle,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          MyText(
                                            text: "24\n08",
                                            color: kwhite,
                                            weight: kseven,
                                            size: 14 * sp,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                        left: w * 0.03,
                                        bottom: h * 0.01,
                                      ),
                                      height: Get.height,
                                      width: w * 0.34,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: kdpurprle,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          MyText(
                                            text: "BLACKOUT",
                                            size: 14 * sp,
                                            weight: kseven,
                                            color: kwhite,
                                          ),
                                          MyText(
                                            text: "From £5",
                                            size: 8 * sp,
                                            weight: kfive,
                                            color: Color(0xffCAC5D6),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: h * 0.15,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color(0xff775483),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: h * 0.02),
                        Container(
                          height: h * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xff775483),
                          ),
                          child: Center(
                            child: MyText(
                              text: "Auto play advertiament Video",
                              size: 14 * sp,
                              weight: kseven,
                              color: Color(0xffF1EEF8).withOpacity(0.4),
                            ),
                          ),
                        ),
                        SizedBox(height: h * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyText(
                              text: "SHISHA BARS",
                              weight: kseven,
                              color: kwhite,
                              size: 17 * sp,
                            ),
                            MyText(
                              text: "See All",
                              weight: kfive,
                              color: kpink,
                              size: 14 * sp,
                            ),
                          ],
                        ),
                        SizedBox(height: h * 0.01),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: h * 0.23,
                                decoration: BoxDecoration(
                                  color: klpurprle,
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        right: w * 0.01,
                                        bottom: h * 0.005,
                                      ),
                                      height: Get.height,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: klpurprle,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          MyText(
                                            text: "24\n08",
                                            color: kwhite,
                                            weight: kseven,
                                            size: 14 * sp,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                        left: w * 0.03,
                                        bottom: h * 0.01,
                                      ),
                                      height: Get.height,
                                      width: w * 0.34,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: kdpurprle,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          MyText(
                                            text: "BLACKOUT",
                                            size: 14 * sp,
                                            weight: kseven,
                                            color: kwhite,
                                          ),
                                          MyText(
                                            text: "From £5",
                                            size: 8 * sp,
                                            weight: kfive,
                                            color: Color(0xffCAC5D6),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: h * 0.15,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color(0xff775483),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: w * 0.03),
                            Expanded(
                              child: Container(
                                height: h * 0.23,
                                decoration: BoxDecoration(
                                  color: klpurprle,
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        right: w * 0.01,
                                        bottom: h * 0.005,
                                      ),
                                      height: Get.height,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: klpurprle,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          MyText(
                                            text: "24\n08",
                                            color: kwhite,
                                            weight: kseven,
                                            size: 14 * sp,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                        left: w * 0.03,
                                        bottom: h * 0.01,
                                      ),
                                      height: Get.height,
                                      width: w * 0.34,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: kdpurprle,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          MyText(
                                            text: "BLACKOUT",
                                            size: 14 * sp,
                                            weight: kseven,
                                            color: kwhite,
                                          ),
                                          MyText(
                                            text: "From £5",
                                            size: 8 * sp,
                                            weight: kfive,
                                            color: Color(0xffCAC5D6),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: h * 0.15,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color(0xff775483),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: h * 0.02),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}

class setData {
  final images;
  final names;
  setData({required this.images, required this.names});
}
