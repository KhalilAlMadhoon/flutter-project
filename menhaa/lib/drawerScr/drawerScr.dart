import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:menhaa/drawerScr/aboutApp.dart';
import 'package:menhaa/lang/local.dart';
import 'package:menhaa/services/services.dart';
import '../signin/signin.dart';

class DrawerScr extends StatefulWidget {
  DrawerScr({Key? key}) : super(key: key);

  @override
  _DrawerScrState createState() => _DrawerScrState();
}

class _DrawerScrState extends State<DrawerScr> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Padding(
      padding: EdgeInsets.only(top: 64.h),
      child: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 33.h),
              child: Text(
                // 'username'.tr,
                username.toString(),
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(top: 32.h),
            //   child: Container(
            //     width: 304.w,
            //     height: 1.h,
            //     color: Colors.grey[200],
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.only(top: 15.h),
            //   child: InkWell(
            //     onTap: () {
            //       print('lang'.tr.toString());
            //       if ('language'.tr == 'Language') {
            //         setState(() {
            //           LocalizationService().changeLocale('Arabic');
            //         });
            //       } else {
            //         setState(() {
            //           LocalizationService().changeLocale('English');
            //         });
            //       }
            //     },
            //     child: Row(
            //       children: [
            //         Icon(
            //           Icons.favorite_rounded,
            //           size: 30,
            //           color: Colors.grey[800],
            //         ),
            //         SizedBox(
            //           width: 35.w,
            //         ),
            //         Text(
            //           'language'.tr,
            //           style:
            //               TextStyle(fontSize: 14.sp, color: Colors.grey[900]),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(top: 32.h),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite_rounded,
                    size: 30,
                    color: Colors.grey[800],
                  ),
                  SizedBox(
                    width: 35.w,
                  ),
                  Text(
                    'contactUs'.tr,
                    style: TextStyle(fontSize: 14.sp, color: Colors.grey[900]),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.h),
              child: InkWell(
                onTap: () {
                  Get.to(() => AboutAppScr());
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite_rounded,
                      size: 30,
                      color: Colors.grey[800],
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                    Text(
                      'aboutUs'.tr,
                      style:
                          TextStyle(fontSize: 14.sp, color: Colors.grey[900]),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.h),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite_rounded,
                    size: 30,
                    color: Colors.grey[800],
                  ),
                  SizedBox(
                    width: 35.w,
                  ),
                  Text(
                    'share'.tr,
                    style: TextStyle(fontSize: 14.sp, color: Colors.grey[900]),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.h),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite_rounded,
                    size: 30,
                    color: Colors.grey[800],
                  ),
                  SizedBox(
                    width: 35.w,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => Signin());
                    },
                    child: Text(
                      'logout'.tr,
                      style:
                          TextStyle(fontSize: 14.sp, color: Colors.grey[900]),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
