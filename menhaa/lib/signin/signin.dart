import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:menhaa/navbar/navbar.dart';
import 'package:menhaa/signup/signUp.dart';
import 'package:menhaa/Backend/firebasebackend.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool visiblbool2 = true;

  @override
  Widget build(BuildContext context) {
    ProgressDialog pd = ProgressDialog(context: context);
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 62.h),
              child: Container(
                width: 132.w,
                height: 132.h,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                // child: Image.asset('assets/images/logo.jpeg'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 39.h),
              child: Text(
                'login'.tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 27.sp,
                    color: HexColor('#002481'),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60.h, right: 65.w, left: 65.w),
              child: TextField(
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                controller: usernamecontroller,
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontSize: 17.sp,
                        color: HexColor('#707070'),
                        fontWeight: FontWeight.bold),
                    hintText: 'البريد الالكتروني'
                    //  'username'.tr,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 55.h, right: 65.w, left: 65.w),
              child: TextField(
                obscureText: visiblbool2,
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                controller: passwordcontroller,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      icon: Icon(
                        visiblbool2 ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          visiblbool2 = !visiblbool2;
                        });
                      }),
                  hintStyle: TextStyle(
                      fontSize: 17.sp,
                      color: HexColor('#707070'),
                      fontWeight: FontWeight.bold),
                  hintText: 'password'.tr,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 51.h),
              child: Center(
                child: InkWell(
                  onTap: () {
                    if (usernamecontroller.text == '') {
                      CoolAlert.show(
                        context: context,
                        type: CoolAlertType.error,
                        text: 'Please Enter User Name',
                      );
                    } else if (passwordcontroller.text == '') {
                      CoolAlert.show(
                        context: context,
                        type: CoolAlertType.error,
                        text: 'Please Enter Your password',
                      );
                    } else {
                      pd.show(max: 100, msg: 'Loading');
                      signInWithEmailAndPassword(
                              email: usernamecontroller.text,
                              password: passwordcontroller.text)
                          .then((value) {
                        pd.close();
                        Get.to(() => NavBar());
                      });
                    }
                  },
                  child: Container(
                    width: 161.w,
                    height: 42.h,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: HexColor('#2B468B'), width: 2.w),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'log'.tr,
                        style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                            color: HexColor('#2B468B')),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Get.to(() => SignUp());
                },
                child: Text(
                  'newAcc'.tr,
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: HexColor('#2B468B')),
                ),
              ),
            ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Container(
            //     width: 395.w,
            //     height: 108.h,
            //     decoration: BoxDecoration(
            //         color: HexColor('#2B468B'),
            //         borderRadius: BorderRadius.only(
            //             topLeft: Radius.circular(53),
            //             topRight: Radius.circular(53))),
            //     child: Center(
            //       child: InkWell(
            //         onTap: () {
            //           Navigator.push(context,
            //               MaterialPageRoute(builder: (context) => SignUp()));
            //         },
            //         child: Text(
            //           'إنشاء حساب جديد',
            //           style: TextStyle(
            //               fontSize: 20.sp,
            //               fontWeight: FontWeight.bold,
            //               color: Colors.white),
            //         ),
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
