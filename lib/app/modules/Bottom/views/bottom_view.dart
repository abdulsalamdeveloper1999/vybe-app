import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:vybe/app/modules/SearchBottomBar/views/search_bottom_bar_view.dart';
import 'package:vybe/app/modules/TicketsBottomBar/views/tickets_bottom_bar_view.dart';
import 'package:vybe/app/modules/home/views/home_view.dart';
import 'package:vybe/constants.dart';
import '../../../../Widgets/willpop.dart';
import '../../ProfileBottomBar/views/profile_bottom_bar_view.dart';
import '../controllers/bottom_controller.dart';

class BottomView extends StatefulWidget {
  @override
  _BottomViewState createState() => _BottomViewState();
}

class _BottomViewState extends State<BottomView> {
  int _selectedIndex = 0;
  List _widgetOptions = [
    HomeView(),
    SearchBottomBarView(),
    TicketsBottomBarView(),
    ProfileBottomBarView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          return onBackButtonPressed(context);
        },
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 15,
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Color(0xff200B4B),
          currentIndex: _selectedIndex,
          iconSize: 20,
          onTap: _onItemTapped,
          elevation: 10,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          unselectedItemColor: kwhite,
          selectedItemColor: kdpurprle,
          items: [
            bottombarItem(
              iconUri: "assets/icons/home.svg",
            ),
            bottombarItem(
              iconUri: "assets/icons/search.svg",
            ),
            bottombarItem(
              iconUri: 'assets/icons/ticket.svg',
            ),
            bottombarItem(
              iconUri: 'assets/icons/profile.svg',
            ),
          ],
          // type: BottomNavigationBarType.shifting,
        ),
      ),
    );
  }
}

bottombarItem({
  required String iconUri,
}) {
  return BottomNavigationBarItem(
    icon: Container(
      width: 32,
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 2.0,
            color: Colors.transparent,
          ),
        ),
      ),
      child: SvgPicture.asset(
        iconUri,
      ),
    ),
    label: '',
    backgroundColor: Color(0xff200B4B),
    activeIcon: Container(
      width: 32,
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 2.0,
            color: Color(0xff6B28B6),
          ),
        ),
      ),
      child: SvgPicture.asset(
        iconUri,
        color: Color(0xff6B28B6),
      ),
    ),
  );
}
