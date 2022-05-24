import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:menhaa/cards/outmenhaCard.dart';
import 'package:menhaa/extraScreens/outmenhaDetails.dart';
import 'package:menhaa/drawerScr/drawerScr.dart';
import 'package:menhaa/services/services.dart';

class OutMenha extends StatefulWidget {
  OutMenha({Key? key}) : super(key: key);

  @override
  _OutMenhaState createState() => _OutMenhaState();
}

class _OutMenhaState extends State<OutMenha> {
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
                  InkWell(
                      onTap: () {
                        _drawerKey.currentState!.openDrawer();
                      },
                      child:
                          Image(image: AssetImage('assets/images/search.png'))),
                  Container(
                    width: 252.w,
                    height: 29.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: HexColor('#002481')),
                        borderRadius: BorderRadius.circular(19)),
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.only(top: -8.h, right: 10.w),
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
            Padding(
              padding: EdgeInsets.only(top: 45.h),
              child: FutureBuilder(
                  future: rssToJson(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    return snapshot.hasData
                        ? Container(
                            width: 360.w,
                            // height: 203.h,
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 1,
                              itemBuilder: (BuildContext context, int index) {
                                return GridView.builder(
                                  physics: ScrollPhysics(),
                                  itemCount: 8,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                        onTap: () {
                                          print(
                                            'hgghgh' +
                                                snapshot.data[index]['link']
                                                    .toString(),
                                          );
                                          Get.to(() => OutMenhaDetails(
                                                snapshot.data[index]
                                                        ['description']
                                                    .toString(),
                                                snapshot.data[index]['link']
                                                    .toString(),
                                                snapshot.data[index]['title']
                                                    .toString(),
                                              ));
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.w, right: 20.w),
                                          child: OutMenhaCard(
                                              snapshot.data[index]['title']
                                                  .toString(),
                                              snapshot.data[index]
                                                      ['description']
                                                  .toString(),
                                              snapshot.data[index]['link']
                                                  .toString()),
                                        ));
                                  },
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisSpacing: 5,
                                          crossAxisCount: 2,
                                          mainAxisSpacing: 2,
                                          childAspectRatio: 0.6 / .5),
                                );
                              },
                            ),
                          )
                        : Center(child: Text(''));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
