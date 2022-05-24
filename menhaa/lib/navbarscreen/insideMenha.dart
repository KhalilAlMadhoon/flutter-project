import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';
import 'package:menhaa/drawerScr/drawerScr.dart';

class InsideMenha extends StatefulWidget {
  InsideMenha({Key? key}) : super(key: key);

  @override
  _InsideMenhaState createState() => _InsideMenhaState();
}

class _InsideMenhaState extends State<InsideMenha> {
  bool isactive = false;
  bool isactive1 = false;
  bool isactive2 = false;
  bool isactive3 = false;
  bool isactive4 = false;
  bool isactive5 = false;
  bool isactive6 = false;
  bool isactive7 = false;
  bool isactive8 = false;
  bool isactive9 = false;
  bool isactive10 = false;
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _drawerKey,
        drawer: DrawerScr(),
        backgroundColor: Colors.white,
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
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                          isDense: true,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: HexColor('#002481'), width: 10),
                              borderRadius: BorderRadius.circular(19)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: HexColor('#002481'), width: 10),
                              borderRadius: BorderRadius.circular(19)),
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
              padding: EdgeInsets.only(top: 48.h),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: ExpansionPanelList(
                  expansionCallback: (panelIndex, isExpanded) {
                    setState(() {
                      isactive1 = !isactive1;
                    });
                  },
                  children: [
                    ExpansionPanel(
                        canTapOnHeader: true,
                        isExpanded: isactive1,
                        body: ListTile(
                            trailing: Text(''),
                            contentPadding: EdgeInsets.only(
                                bottom: ScreenUtil().setHeight(20)),
                            subtitle: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '''قيد على وجود ساعات بكالوريوس للطالب	
قيد على كون الطالب معترف به من قبل اللجنة الرياضية	
قيد على كون الطالب غير مكفول بالكامل من أي جهة	
قيد على ألا يكون الطالب خريج	
قيد المنحة لا تنزل في الفصل الصيفي (ما عدا الطب)	
قيد على كون الطالب ممنوع من استحقاق المنحة	
''',
                                    textAlign: TextAlign.start,
                                  )
                                ],
                              ),
                            )),
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Container(
                            width: 360.w,
                            height: 42.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: HexColor('#707070')),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(right: 15.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'منحة النشاط الرياضي',
                                    // textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: ExpansionPanelList(
                expansionCallback: (panelIndex, isExpanded) {
                  setState(() {
                    isactive = !isactive;
                  });
                },
                children: [
                  ExpansionPanel(
                      canTapOnHeader: true,
                      isExpanded: isactive,
                      body: ListTile(
                          trailing: Text(''),
                          contentPadding: EdgeInsets.only(
                              bottom: ScreenUtil().setHeight(20)),
                          subtitle: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '''قيد على وجود ساعات بكالوريوس للطالب	
قيد على برنامج الدراسة	
قيد على كون الطالب غير مكفول بالكامل من أي جهة	
قيد على ألا يكون الطالب خريج	
قيد المنحة لا تنزل في الفصل الصيفي (ما عدا الطب)	
قيود على الفصول السابقة	
قيد على معدل الثانوية العامة	
قيد على كون الطالب ممنوع من استحقاق المنحة	
قيد على عدد ساعات الاستفادة	
قيد على القسم	
قيد على حداثة شهادة التوجيهي		
''',
                                  textAlign: TextAlign.start,
                                )
                              ],
                            ),
                          )),
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Container(
                          width: 360.w,
                          height: 42.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: HexColor('#707070')),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(right: 15.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'منحة الجغرافيا',
                                  // textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: ExpansionPanelList(
                expansionCallback: (panelIndex, isExpanded) {
                  setState(() {
                    isactive2 = !isactive2;
                  });
                },
                children: [
                  ExpansionPanel(
                      canTapOnHeader: true,
                      isExpanded: isactive2,
                      body: ListTile(
                          trailing: Text(''),
                          contentPadding: EdgeInsets.only(
                              bottom: ScreenUtil().setHeight(20)),
                          subtitle: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '''الشرط
قيد على وجود ساعات بكالوريوس للطالب	
قيد على برنامج الدراسة	
قيد على كون الطالب غير مكفول بالكامل من أي جهة	
قيد على ألا يكون الطالب خريج	
قيد المنحة لا تنزل في الفصل الصيفي (ما عدا الطب)	
قيود على الفصول السابقة	
قيد على معدل الثانوية العامة	
قيد على كون الطالب ممنوع من استحقاق المنحة	
قيد على عدد ساعات الاستفادة	
قيد على القسم	
قيد على حداثة شهادة التوجيهي			
''',
                                  textAlign: TextAlign.start,
                                )
                              ],
                            ),
                          )),
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Container(
                          width: 360.w,
                          height: 42.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: HexColor('#707070')),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(right: 15.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'منحة اللغة العربية',
                                  // textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: ExpansionPanelList(
                expansionCallback: (panelIndex, isExpanded) {
                  setState(() {
                    isactive3 = !isactive3;
                  });
                },
                children: [
                  ExpansionPanel(
                      canTapOnHeader: true,
                      isExpanded: isactive3,
                      body: ListTile(
                          // trailing: Text(''),
                          contentPadding: EdgeInsets.only(
                              bottom: ScreenUtil().setHeight(20)),
                          subtitle: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '''الشرط
قيد على أن يكون توجيهي الطالب أزهري	
قيد على وجود ساعات بكالوريوس للطالب	
قيد على برنامج الدراسة	
قيد على كون الطالب غير مكفول بالكامل من أي جهة	
قيد على ألا يكون الطالب خريج	
قيد المنحة لا تنزل في الفصل الصيفي (ما عدا الطب)	
قيود على الفصول السابقة	
قيد على كون الطالب ممنوع من استحقاق المنحة	
قيد على عدد ساعات الاستفادة	
قيد وجود رقم الطالب في كشف	
''',
                                  textAlign: TextAlign.start,
                                )
                              ],
                            ),
                          )),
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Container(
                          width: 360.w,
                          height: 42.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: HexColor('#707070')),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(right: 15.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'المنحة الأزهرية',
                                  // textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: ExpansionPanelList(
                expansionCallback: (panelIndex, isExpanded) {
                  setState(() {
                    isactive4 = !isactive4;
                  });
                },
                children: [
                  ExpansionPanel(
                      canTapOnHeader: true,
                      isExpanded: isactive4,
                      body: ListTile(
                          // trailing: Text(''),
                          contentPadding: EdgeInsets.only(
                              bottom: ScreenUtil().setHeight(20)),
                          subtitle: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '''الشرط
قيد على وجود ساعات بكالوريوس للطالب
قيد على عدم تجاوز مفتاح التنسيق
قيد على برنامج الدراسة
قيد على كون الطالب غير مكفول بالكامل من أي جهة
قيد على ألا يكون الطالب خريج
قيد المنحة لا تنزل في الفصل الصيفي (ما عدا الطب)
قيود على الفصول السابقة
قيد على معدل الثانوية العامة
قيد على كون الطالب ممنوع من استحقاق المنحة
قيد على عدد ساعات الاستفادة
قيد على القسم
قيد على حداثة شهادة التوجيهي	
''',
                                  textAlign: TextAlign.start,
                                )
                              ],
                            ),
                          )),
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Container(
                          width: 360.w,
                          height: 42.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: HexColor('#707070')),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(right: 15.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'المنحة الشرعية',
                                  // textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: ExpansionPanelList(
                expansionCallback: (panelIndex, isExpanded) {
                  setState(() {
                    isactive5 = !isactive5;
                  });
                },
                children: [
                  ExpansionPanel(
                      canTapOnHeader: true,
                      isExpanded: isactive5,
                      body: ListTile(
                          // trailing: Text(''),
                          contentPadding: EdgeInsets.only(
                              bottom: ScreenUtil().setHeight(20)),
                          subtitle: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '''الشرط
قيد على وجود ساعات بكالوريوس للطالب
قيد على برنامج الدراسة
قيد على عدم التحويل لكلية أخرى
قيد على كون الطالب غير مكفول بالكامل من أي جهة
قيد على عدم رسوب الطالب في عدد مواد خلال عام دراسي
قيد على ألا يكون الطالب خريج
قيد المنحة لا تنزل في الفصل الصيفي (ما عدا الطب)
قيود على الفصول السابقة
قيد على كون الطالب ممنوع من استحقاق المنحة
قيد وجود رقم الطالب في كشف
''',
                                  textAlign: TextAlign.start,
                                )
                              ],
                            ),
                          )),
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Container(
                          width: 360.w,
                          height: 42.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: HexColor('#707070')),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(right: 15.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'أوائل توجيهي - منحة الوزارة من الجامعات الفلسطينية',
                                  // textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: ExpansionPanelList(
                expansionCallback: (panelIndex, isExpanded) {
                  setState(() {
                    isactive6 = !isactive6;
                  });
                },
                children: [
                  ExpansionPanel(
                      canTapOnHeader: true,
                      isExpanded: isactive6,
                      body: ListTile(
                          // trailing: Text(''),
                          contentPadding: EdgeInsets.only(
                              bottom: ScreenUtil().setHeight(20)),
                          subtitle: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '''الشرط
قيد على وجود ساعات بكالوريوس للطالب
قيد على برنامج الدراسة
قيد على كون الطالب غير مكفول بالكامل من أي جهة
قيد على ألا يكون الطالب خريج
قيد المنحة لا تنزل في الفصل الصيفي (ما عدا الطب)
قيود على الفصول السابقة
قيد على كون الطالب ممنوع من استحقاق المنحة
قيد على عدد ساعات الاستفادة
قيد على القسم
قيد وجود رقم الطالب في كشف	
''',
                                  textAlign: TextAlign.start,
                                )
                              ],
                            ),
                          )),
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Container(
                          width: 360.w,
                          height: 42.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: HexColor('#707070')),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(right: 15.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'منحة الكيمياء',
                                  // textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: ExpansionPanelList(
                expansionCallback: (panelIndex, isExpanded) {
                  setState(() {
                    isactive7 = !isactive7;
                  });
                },
                children: [
                  ExpansionPanel(
                      canTapOnHeader: true,
                      isExpanded: isactive7,
                      body: ListTile(
                          // trailing: Text(''),
                          contentPadding: EdgeInsets.only(
                              bottom: ScreenUtil().setHeight(20)),
                          subtitle: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '''الشرط
قيد على وجود ساعات بكالوريوس للطالب
قيد على برنامج الدراسة
قيد على كون الطالب غير مكفول بالكامل من أي جهة
قيد على ألا يكون الطالب خريج
قيد المنحة لا تنزل في الفصل الصيفي (ما عدا الطب)
قيد على كون الطالب ممنوع من استحقاق المنحة
قيد على كون الطالب قام بزيارة طبيب الجامعة
قيد على كون نسبة إعاقة الطالب تستحق منحة	
''',
                                  textAlign: TextAlign.start,
                                )
                              ],
                            ),
                          )),
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Container(
                          width: 360.w,
                          height: 42.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: HexColor('#707070')),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(right: 15.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'منحة المعاقين',
                                  // textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: ExpansionPanelList(
                expansionCallback: (panelIndex, isExpanded) {
                  setState(() {
                    isactive8 = !isactive8;
                  });
                },
                children: [
                  ExpansionPanel(
                      canTapOnHeader: true,
                      isExpanded: isactive8,
                      body: ListTile(
                          // trailing: Text(''),
                          contentPadding: EdgeInsets.only(
                              bottom: ScreenUtil().setHeight(20)),
                          subtitle: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '''الشرط
قيد على وجود ساعات بكالوريوس للطالب
قيد على برنامج الدراسة
قيد على كون الطالب غير مكفول بالكامل من أي جهة
قيد على ألا يكون الطالب خريج
قيد المنحة لا تنزل في الفصل الصيفي (ما عدا الطب)
قيود على الفصول السابقة
قيد على كون الطالب ممنوع من استحقاق المنحة
قيد على عدد ساعات الاستفادة
قيد على أن يكون الطالب قام بالتسميع لدى مركز القرآن	
''',
                                  textAlign: TextAlign.start,
                                )
                              ],
                            ),
                          )),
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Container(
                          width: 360.w,
                          height: 42.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: HexColor('#707070')),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(right: 15.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'منحة حفظة القرآن',
                                  // textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: ExpansionPanelList(
                expansionCallback: (panelIndex, isExpanded) {
                  setState(() {
                    isactive9 = !isactive9;
                  });
                },
                children: [
                  ExpansionPanel(
                      canTapOnHeader: true,
                      isExpanded: isactive9,
                      body: ListTile(
                          // trailing: Text(''),
                          contentPadding: EdgeInsets.only(
                              bottom: ScreenUtil().setHeight(20)),
                          subtitle: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '''الشرط
قيد على وجود ساعات بكالوريوس للطالب
قيد على برنامج الدراسة
قيد على كون الطالب إبن أحد العاملين بالجامعة
قيد على المدة القانونية للموظف العائل
قيد على كون الطالب غير مكفول بالكامل من أي جهة
قيد على ألا يكون الطالب خريج
قيد المنحة لا تنزل في الفصل الصيفي (ما عدا الطب)
قيود على الفصول السابقة
قيد على كون الطالب ممنوع من استحقاق المنحة
قيد على عدد ساعات الاستفادة
''',
                                  textAlign: TextAlign.start,
                                )
                              ],
                            ),
                          )),
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Container(
                          width: 360.w,
                          height: 42.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: HexColor('#707070')),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(right: 15.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'منحة أبناء العاملين و الأمناء',
                                  // textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: ExpansionPanelList(
                expansionCallback: (panelIndex, isExpanded) {
                  setState(() {
                    isactive10 = !isactive10;
                  });
                },
                children: [
                  ExpansionPanel(
                      canTapOnHeader: true,
                      isExpanded: isactive10,
                      body: ListTile(
                          // trailing: Text(''),
                          contentPadding: EdgeInsets.only(
                              bottom: ScreenUtil().setHeight(20)),
                          subtitle: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '''الشرط
قيد على وجود ساعات بكالوريوس للطالب
قيد على برنامج الدراسة
قيد على انتساب الطالب للجامعة قبل فصل معين
قيد على أن المنحة تنزل من فصل معين
قيد على أن يكون الطالب جديد في الجامعة
قيد على كون الطالب غير مكفول بالكامل من أي جهة
قيد على ألا يكون الطالب خريج
قيد على استثناء كلية معينة
قيد المنحة لا تنزل في الفصل الصيفي (ما عدا الطب)
قيد على معدل الثانوية العامة
قيد على كون الطالب ممنوع من استحقاق المنحة
قيد على عدم تجاوز استفادة الطالب من المنح الداخلية حد معيّن
قيد على كون الطالب لا يدرس في فرع الجنوب
قيد على حداثة شهادة التوجيهي
''',
                                  textAlign: TextAlign.start,
                                )
                              ],
                            ),
                          )),
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Container(
                          width: 360.w,
                          height: 42.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: HexColor('#707070')),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(right: 15.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'منحة امتياز الثانوية العامة',
                                  // textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
            SizedBox(
              height: 50.h,
            )
          ],
        ),
      ),
    );
  }
}
