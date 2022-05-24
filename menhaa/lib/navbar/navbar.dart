import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:menhaa/navbarscreen/insideMenha.dart';
import 'package:menhaa/navbarscreen/kfalat.dart';
import 'package:menhaa/navbarscreen/mainscr.dart';
import 'package:menhaa/navbarscreen/outmenha.dart';
import 'package:get/get.dart';

class NavBar extends StatefulWidget {
  NavBar({Key? key}) : super(key: key);
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  late List<Widget> listScreens;
  @override
  void initState() {
    super.initState();
    listScreens = [
      Mainscr(),
      OutMenha(),
      InsideMenha(),
      KfalatScr(),
    ];
  }

  int _currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: listScreens.elementAt(_currentSelected),
          bottomNavigationBar: Container(
            height: isPortrait ? 56.h : 168.h,
            width: 375.w,
            decoration: BoxDecoration(color: HexColor('#2B468B')),
            child: BottomNavigationBar(
                backgroundColor: HexColor('#2B468B'),
                currentIndex: _currentSelected,
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(icon: Container(), label: 'main'.tr),
                  BottomNavigationBarItem(
                      icon: Container(), label: 'outMen'.tr),
                  BottomNavigationBarItem(icon: Container(), label: 'inMen'.tr),
                  BottomNavigationBarItem(label: 'kafa'.tr, icon: Container()),
                ],
                selectedItemColor: Colors.white,
                selectedIconTheme: IconThemeData(color: HexColor('#008DA8')),
                unselectedItemColor: Colors.white,
                unselectedLabelStyle: TextStyle(
                    fontSize: isPortrait ? 10.sp : 18.sp,
                    fontFamily: 'JannaLTRegular',
                    color: HexColor('#363636')),
                selectedLabelStyle: TextStyle(
                    color: HexColor('#008DA8'),
                    fontSize: isPortrait ? 15.sp : 18.sp,
                    fontFamily: 'JannaLTRegular'),
                onTap: (index) {
                  setState(() {
                    _currentSelected = index;
                  });
                }),
          )),
    );
  }
}
