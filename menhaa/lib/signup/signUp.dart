// import 'dart:io';
import 'package:cool_alert/cool_alert.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:menhaa/Backend/firebasebackend.dart';
import 'package:menhaa/navbar/navbar.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // static final FacebookLogin facebookSignIn = new FacebookLogin();
  // String _message = 'Log in/out by pressing the buttons below.';

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confpasswordcontroller = TextEditingController();

  bool visiblbool = true;
  bool visiblbool2 = true;
  bool checkvalue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: [
          // Padding(
          //   padding: EdgeInsets.only(top: 40.h),
          //   child: Center(
          //     child: Container(
          //       width: 132.w,
          //       height: 132.h,
          //       decoration: BoxDecoration(shape: BoxShape.circle),
          //       child:
          //           Image(image: AssetImage('assets/images/selectphoto.png')),
          //     ),
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.only(top: 40.h),
            child: Text(
              'newAcc'.tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 27.sp,
                  color: HexColor('#2B468B'),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.h, right: 65.w, left: 65.w),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              controller: emailcontroller,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                    fontSize: 17.sp,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold),
                hintText: 'البريد الإلكتروني',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.h, right: 65.w, left: 65.w),
            child: TextField(
              keyboardType: TextInputType.text,
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              controller: namecontroller,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                    fontSize: 17.sp,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold),
                hintText: 'name'.tr,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 34.h, right: 65.w, left: 65.w),
            child: TextField(
              obscureText: visiblbool,
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              controller: passwordcontroller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    icon: Icon(
                      visiblbool ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        visiblbool = !visiblbool;
                      });
                    }),
                hintStyle: TextStyle(
                    fontSize: 17.sp,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold),
                hintText: 'password'.tr,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 34.h, right: 65.w, left: 65.w),
            child: TextField(
              obscureText: visiblbool2,
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              controller: confpasswordcontroller,
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
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold),
                hintText: 'confirmPass'.tr,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h, right: 55.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                    activeColor: HexColor('#2B468B'),
                    value: checkvalue,
                    onChanged: (bool? newValue) {
                      setState(() {
                        checkvalue = newValue!;
                      });
                    }),
                Text(
                  'maneh'.tr,
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: HexColor('#2B468B'),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Center(
              child: InkWell(
                onTap: () {
                  if (emailcontroller.text == '') {
                    CoolAlert.show(
                      context: context,
                      type: CoolAlertType.error,
                      text: 'Please Enter Your Email',
                    );
                  } else if (confpasswordcontroller.text !=
                      passwordcontroller.text) {
                    CoolAlert.show(
                      context: context,
                      type: CoolAlertType.error,
                      text: 'Please Confirm Your password correctly',
                    );
                  } else if (passwordcontroller.text == '') {
                    CoolAlert.show(
                      context: context,
                      type: CoolAlertType.error,
                      text: 'Please Enter Your password',
                    );
                  } else if (namecontroller.text == '') {
                    CoolAlert.show(
                      context: context,
                      type: CoolAlertType.error,
                      text: 'Please Enter Your Name',
                    );
                  }
                  //  else if(){}
                  else {
                    registerUsingEmailAndPassword(
                            email: emailcontroller.text,
                            password: passwordcontroller.text,
                            name: namecontroller.text)
                        .then((value) => {
                              if (userId == null)
                                {
                                  CoolAlert.show(
                                    context: context,
                                    type: CoolAlertType.error,
                                    text: 'Invalid Data',
                                  )
                                }
                              else
                                {Get.offAll(() => NavBar())}
                            });
                  }
                },
                child: Container(
                  width: 161.w,
                  height: 42.h,
                  decoration: BoxDecoration(
                      border: Border.all(color: HexColor('#2B468B'), width: 2),
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
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Container(
                width: 231.w,
                height: 34.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: HexColor('#2B468B')),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/facebook.png'),
                    ),
                    Text(
                      'facebook'.tr,
                      style: TextStyle(
                        fontSize: 21.sp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
