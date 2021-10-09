import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payroll/pages/Departmentmodules/addDepartments.dart';
import 'package:payroll/widgets/gridWithWidgetParam.dart';
import 'package:payroll/pages/leaveDetails/LeavereportDataTableWithoutModel.dart';
import 'package:payroll/widgets/constants.dart';
import 'package:payroll/widgets/navigationBarIcon.dart';
import 'package:scutiwidgets/alertDialog.dart';
import 'package:scutiwidgets/fittedText.dart';
import 'package:scutiwidgets/linearProgressBar.dart';
import 'package:scutiwidgets/size.dart';





class Departments extends StatefulWidget {
  VoidCallback voidCallback;
  Departments({required this.voidCallback});
  // const Departments({Key? key}) : super(key: key);

  @override
  _DepartmentsState createState() => _DepartmentsState();
}

class _DepartmentsState extends State<Departments> {
  GlobalKey <ScaffoldState> scaffoldkey=new GlobalKey<ScaffoldState>();
  @override
  late  double width,height,width2;

  List<ReportGridStyleModel2> gridHeaderList=[
    ReportGridStyleModel2(columnName: "Department Name"),
    ReportGridStyleModel2(columnName: "Action",width: attWidth1),
  ];
  List<dynamic> data=[
    {"Department Name":"Web Development","Action":"12-09-21",},
    {"Department Name":"Application Development","Action":"12-09-21",},
    {"Department Name":"IT Management","Action":"12-09-21",},
    {"Department Name":"Accounts Management","Action":"12-09-21",},
    {"Department Name":"Support Management","Action":"12-09-21",},
    {"Department Name":"Marketing","Action":"12-09-21",},
  ];
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    return SafeArea(
        child: Scaffold(
          key: scaffoldkey,
          backgroundColor: Color(0XFFFFFFFF),
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: CurvedNavigationBar(
            height: 55,
            color: Color(0Xff4B5AFF),
            backgroundColor: Color(0xffffffff),
            items: <Widget>[
              Icon(Icons.add, size: 30,color: Colors.white,),
              Icon(Icons.list, size: 30,color: Colors.white,),
              Icon(Icons.compare_arrows, size: 30,color: Colors.white,),
            ],
            onTap: (index) {
              if(index==0){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddDepartment()),);
              }
            },
          ),
          body: Container(
            height: height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: width,
                    height: 70,
                    color: Color(0xff4852FF),
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: (){
                              widget.voidCallback();
                              //scaffoldkey.currentState.openDrawer();
                            },
                            child: NavBarIcon()
                        ),
                        Container(
                          child: Text('Departments',style: TextStyle(color: Color(0xffffffff),fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                        ),
                        SizedBox(height: 10,),

                      ],
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  GridWithWidgetParam(
                      topMargin: 10,
                      gridBodyReduceHeight: 70,
                      gridHeight: 350,
                      leftHeader: "Department Name",
                      leftHeaderWidth: 250,
                      leftBody:  Column(
                          children: data.asMap().map((key, value) => MapEntry(key,
                              Container(
                                alignment:Alignment.centerLeft,
                                padding:  EdgeInsets.only(left: 5),
                                decoration: BoxDecoration(
                                  border: gridBottomborder,
                                ),
                                height: 50,
                                width: 250,
                                child: Row(
                                  children: [
                                    FittedText(
                                      height: 16,
                                      width: 150,
                                      alignment: Alignment.centerLeft,
                                      textStyle:key==7?gridFooterColor14:gridTextColor14,
                                      text: "${value['Department Name']}",
                                    ),
                                  ],
                                ),
                              )
                          )).values.toList()
                      ),
                      rightHeader: Row(
                        children: [
                          Container(
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.only(left: 0),
                              width: SizeConfig.screenWidth!-260,
                              child: Text("Action",
                                style: gridHeaderTS,)
                          ),
                        ],
                      ),
                      rightBody: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:data.asMap().map((key, value) => MapEntry(key,
                            Container(
                              decoration: BoxDecoration(
                                // border: gridBottomborder,
                                //   color: widget.selectedUid==value['Uid']?yellowColor:gridBodyBgColor,
                              ),
                              height: 50,
                              // margin: EdgeInsets.only(bottom:i==lists.length-1?70: 0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      alignment:Alignment.center,
                                      padding:  EdgeInsets.only(left: 10),
                                      decoration: BoxDecoration(
                                        border: gridBottomborder,
                                        // color: widget.selectedUid==value['Uid']?yellowColor:gridBodyBgColor,
                                      ),
                                      height: 50,
                                      width: SizeConfig.screenWidth!-260,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Icon(Icons.edit,size: 20,color: Colors.grey,),
                                          SizedBox(width: 10,),
                                          GestureDetector(
                                              onTap: (){
                                                CustomAlert(
                                                  callback: (){
                                                    Navigator.pop(context);
                                                  },
                                                  Cancelcallback: (){
                                                    Navigator.pop(context);
                                                  }
                                                ).cupertinoDialogYesNo(context, "Are you sure want to delete ?");
                                              },
                                              child: Icon(Icons.delete,size: 20,color: Color(0XFF0D48D2))),
                                        ],
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          )).values.toList()
                      )
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
