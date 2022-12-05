import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:vybe/Widgets/elevated_button_widget.dart';

import '../../../../Widgets/my_text.dart';
import '../../../../constants.dart';
import '../../../../weight.dart';
import '../controllers/buy_tickets_controller.dart';

String? check;
String? checktwo;

class BuyTicketsView extends StatefulWidget {
  @override
  State<BuyTicketsView> createState() => _BuyTicketsViewState();
}

class _BuyTicketsViewState extends State<BuyTicketsView> {
  bool _isVisible = true;
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
              physics: ScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                              text: "Buy Tickets",
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
                    thickness: 1,
                  ),
                  SizedBox(height: h * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w / 17.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...List.generate(
                          checkRow.length,
                          (index) => Container(
                            margin: EdgeInsets.only(bottom: h * 0.02),
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: w * 0.03),
                                      height: h * 0.08,
                                      width: w * 0.65,
                                      decoration: BoxDecoration(
                                        color: index == 0
                                            ? Color(0xffFF0000)
                                            : klpurprle,
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          MyText(
                                            text: '${checkRow[index].price}',
                                            size: 24 * sp,
                                            weight: kseven,
                                            color: kwhite,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          right: w * 0.03, left: w * 0.03),
                                      height: h * 0.08,
                                      width: w * 0.46,
                                      decoration: BoxDecoration(
                                        color: index == 0
                                            ? Color(0xffB20C0C)
                                            : kdpurprle,
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          MyText(
                                            text: '${checkRow[index].text}',
                                            size: 18 * sp,
                                            weight: kseven,
                                            color: kwhite,
                                          ),
                                          SvgPicture.asset(
                                            "assets/icons/info.svg",
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: w * 0.05),
                                Expanded(
                                  child: _isVisible == false
                                      ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _isVisible == true;
                                            });
                                            print(_isVisible);
                                          },
                                          child: CircleContainer())
                                      : ListTileItem(),
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
                        ...List.generate(
                          checkRowTwo.length,
                          (index) => Container(
                            margin: EdgeInsets.only(bottom: h * 0.02),
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: w * 0.03),
                                      height: h * 0.08,
                                      width: w * 0.65,
                                      decoration: BoxDecoration(
                                        color: Color(0xffA68439),
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          MyText(
                                            text: '${checkRowTwo[index].price}',
                                            size: 24 * sp,
                                            weight: kseven,
                                            color: kwhite,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                        right: w * 0.03,
                                        left: w * 0.03,
                                      ),
                                      height: h * 0.08,
                                      width: w * 0.46,
                                      decoration: BoxDecoration(
                                        color: Color(0xffC7A251),
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: MyText(
                                              text:
                                                  '${checkRowTwo[index].text}',
                                              size: 18 * sp,
                                              weight: kseven,
                                              color: kwhite,
                                            ),
                                          ),
                                          SvgPicture.asset(
                                            "assets/icons/info.svg",
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: w * 0.05),
                                Expanded(child: CircleContainer()),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: h * 0.02),
                        MyText(
                          text: "Choose Tables",
                          size: 16 * sp,
                          weight: ksix,
                          color: kwhite,
                        ),
                        SizedBox(height: h * 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ...List.generate(
                                  4,
                                  (index) => Container(
                                    margin: EdgeInsets.only(right: w * 0.05),
                                    height: h * 0.07,
                                    width: w * 0.1,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: klpurprle,
                                    ),
                                    child: Center(
                                      child: MyText(
                                        text: "${numbers[index]}",
                                        size: 24 * sp,
                                        weight: kfive,
                                        color: kwhite,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: h * 0.01),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ...List.generate(
                                  4,
                                  (index) => Container(
                                    margin: EdgeInsets.only(right: w * 0.05),
                                    height: h * 0.07,
                                    width: w * 0.1,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: klpurprle,
                                    ),
                                    child: Center(
                                      child: MyText(
                                        text: "${numbers[index]}",
                                        size: 24 * sp,
                                        weight: kfive,
                                        color: kwhite,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: h * 0.05),
                        MyButton(
                          text: "Check Out",
                          onPress: () {},
                          bgcolor: klpurprle,
                        ),
                        SizedBox(height: h * 0.03),
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

class CircleContainer extends StatelessWidget {
  const CircleContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return Container(
      height: h * 0.04,
      width: w * 0.08,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 2,
          color: Color(0xffADBFFF),
        ),
      ),
    );
  }
}

class checkClass {
  final text;
  final price;

  checkClass({required this.text, required this.price});
}

List<checkClass> checkRow = [
  checkClass(
    text: 'Early Bird',
    price: '£3',
  ),
  checkClass(
    text: 'Phase 1',
    price: '£7',
  ),
  checkClass(
    text: 'Phase 2',
    price: '£10',
  ),
  checkClass(
    text: 'Phase 3',
    price: '£12',
  ),
];
List<checkClass> checkRowTwo = [
  checkClass(
    text: 'VIP Early Bird',
    price: '£15',
  ),
  checkClass(
    text: 'VIP',
    price: '£25',
  ),
  checkClass(
    text: 'VIP',
    price: '£26',
  ),
];
List numbers = ['3', '4', '5', '6'];

class ListTileItem extends StatefulWidget {
  ListTileItem();
  @override
  _ListTileItemState createState() => new _ListTileItemState();
}

class _ListTileItemState extends State<ListTileItem> {
  int count = 0;
  bool changeColor = false;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (count != 0) {
                  count--;
                } else {
                  count = 0;
                }
              });
            },
            child: SvgPicture.asset("assets/icons/negative.svg"),
          ),
        ),
        SizedBox(width: w * 0.02),
        Expanded(
          child: MyText(
            text: "$count",
            color: kwhite,
            size: 24 * sp,
            weight: kfive,
          ),
        ),
        SizedBox(width: w * 0.02),
        Expanded(
          child: GestureDetector(
              onTap: () {
                setState(() {
                  count++;
                });
              },
              child: SvgPicture.asset("assets/icons/positive.svg")),
        ),
      ],
    );
  }
}
