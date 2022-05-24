import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class MainCard extends StatefulWidget {
  final String ouname;
  MainCard(this.ouname, {Key? key}) : super(key: key);

  @override
  _MainCardState createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: Stack(
          children: [
            Container(
              width: 106.w,
              height: 108.h,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  border: Border.all(color: HexColor('#002481'), width: 2),
                  borderRadius: BorderRadius.circular(4)),
              child: Image(
                image: AssetImage(
                  'assets/images/onboard1.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: 106.w,
              height: 108.h,
              color: Colors.black.withOpacity(0.6),
            ),
            Container(
              width: 106.w,
              height: 108.h,
              child: Padding(
                padding: EdgeInsets.only(right: 5.w, left: 5.w, top: 10.h),
                child: Text(
                  widget.ouname.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
