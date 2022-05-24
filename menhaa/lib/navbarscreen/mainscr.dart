import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:menhaa/cards/mainCard.dart';
import 'package:menhaa/drawerScr/drawerScr.dart';
import 'package:get/get.dart';
import 'package:menhaa/navbarscreen/KfalaSign.dart';

class Mainscr extends StatefulWidget {
  Mainscr({Key? key}) : super(key: key);

  @override
  _MainscrState createState() => _MainscrState();
}

class _MainscrState extends State<Mainscr> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _drawerKey,
      drawer: DrawerScr(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.grey[700],
                    ),
                    onPressed: () {
                      _drawerKey.currentState!.openDrawer();
                    }),
                Container(
                  width: 252.w,
                  height: 29.h,
                  decoration: BoxDecoration(
                      border: Border.all(color: HexColor('#002481')),
                      borderRadius: BorderRadius.circular(19)),
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: -8.h, right: 10.w),
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.search,
                          size: 20,
                          color: Colors.grey[400],
                        ),
                        hintText: 'exampleSearch'.tr,
                        hintStyle: TextStyle(
                            fontSize: 12.sp, color: HexColor('#707070'))),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 25.h),
              child: Container(
                width: 301.w,
                height: 28.h,
                decoration: BoxDecoration(
                    border: Border.all(color: HexColor('#707070'), width: 2),
                    color: HexColor('#2B468B'),
                    borderRadius: BorderRadius.circular(11)),
                child: Padding(
                  padding: EdgeInsets.only(right: 35.w, left: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Padding(padding: EdgeInsets.only(, right: 15.w)),
                      Text(
                        'outMen'.tr,
                        style: TextStyle(fontSize: 18.sp, color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 15,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 21.h),
            child: Container(
              height: 120.h,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MainCard('منحة النشاط الرياضي');
                },
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 25.h),
              child: Container(
                width: 301.w,
                height: 28.h,
                decoration: BoxDecoration(
                    border: Border.all(color: HexColor('#707070'), width: 2),
                    color: HexColor('#2B468B'),
                    borderRadius: BorderRadius.circular(11)),
                child: Padding(
                  padding: EdgeInsets.only(right: 35.w, left: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'inMen'.tr,
                        style: TextStyle(fontSize: 18.sp, color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 15,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 21.h,
            ),
            child: Container(
              height: 120.h,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MainCard(''
                      // snapshot.data[index]['title'].toString(),
                      );
                },
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 25.h),
              child: Container(
                width: 301.w,
                height: 28.h,
                decoration: BoxDecoration(
                    border: Border.all(color: HexColor('#707070'), width: 2),
                    color: HexColor('#2B468B'),
                    borderRadius: BorderRadius.circular(11)),
                child: Padding(
                  padding: EdgeInsets.only(right: 35.w),
                  child: Text(
                    'kfalat'.tr,
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 18.sp, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25.h),
            child: Center(
              child: InkWell(
                onTap: () {
                  Get.to(() => KfalaSign());
                },
                child: Container(
                  width: 212.w,
                  height: 73.h,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.grey[200],
                      border: Border.all(color: HexColor('#002481')),
                      borderRadius: BorderRadius.circular(4)),
                  child: Center(
                    child: Text(
                      'mustafeed'.tr,
                      style: TextStyle(
                          fontSize: 18.sp, color: HexColor('#002481')),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
