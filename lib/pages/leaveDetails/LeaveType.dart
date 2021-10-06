import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payroll/widgets/constants.dart';
import 'package:payroll/widgets/navigationBarIcon.dart';
import 'package:scutiwidgets/linearProgressBar.dart';
import 'package:scutiwidgets/size.dart';

import 'LeavereportDataTableWithoutModel.dart';


class LeaveReport extends StatefulWidget {
  VoidCallback voidCallback;
  LeaveReport({required this.voidCallback});
  // const LeaveReport({Key? key}) : super(key: key);

  @override
  _LeaveReportState createState() => _LeaveReportState();
}

class _LeaveReportState extends State<LeaveReport> {
  GlobalKey <ScaffoldState> scaffoldkey=new GlobalKey<ScaffoldState>();
  @override
  late  double width,height,width2;

  List<ReportGridStyleModel2> gridHeaderList=[
    ReportGridStyleModel2(columnName: "Leave Type"),
    ReportGridStyleModel2(columnName: "From",width: attWidth1),
    ReportGridStyleModel2(columnName: "To",width: attWidth1),
    ReportGridStyleModel2(columnName: "Status",width: attWidth1),
  ];
  List<dynamic> data=[
    {"Leave Type":"Casual Leave","From":"12-09-21","To":"14-09-21","Status":"New",},
    {"Leave Type":"Casual Leave","From":"12-09-21","To":"14-09-21","Status":"AB",},
    {"Leave Type":"Casual Leave","From":"12-09-21","To":"14-09-21","Status":"AB",},
    {"Leave Type":"Casual Leave","From":"12-09-21","To":"14-09-21","Status":"AB",},
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
              GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                    backgroundColor: Color(0xFF3D73DD) ,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                      ),
                      context: context,
                      builder: (context) {
                        return Container(
                          width: width*1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                            color: Color(0xFF3D73DD),
                          ),
                          height: 250,
                          padding: EdgeInsets.all(25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Container(
                                child: Text('Leave Status', style:TextStyle(fontSize: 16,fontFamily:'RB',color: Color(0XFFFFFFFF),),textAlign: TextAlign.left,),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                width: width,
                                child: Wrap(
                                  runSpacing: 20,
                                  spacing: 20,
                                  children: [
                                    Container(
                                      width: width*0.3,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Color(0XFF2559BE),
                                      ),
                                      child: Center(
                                        child: Text('Pending',style:TextStyle(fontSize: 16,fontFamily:'RB',color: Color(0XFFFFFFFF),)),
                                      ),
                                    ),
                                    Container(
                                      width: width*0.3,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Color(0XFFFFFFFF),
                                      ),
                                      child: Center(
                                        child: Text('Approved',style:TextStyle(fontSize: 16,fontFamily:'RB',color: Color(0XFF2559BE),)),
                                      ),
                                    ),
                                    Container(
                                      width: width*0.3,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Color(0XFF2559BE),
                                      ),
                                      child: Center(
                                        child: Text('Rejected',style:TextStyle(fontSize: 16,fontFamily:'RB',color: Color(0XFFFFFFFF),)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: Container(
                  child: Icon(Icons.filter_alt_outlined, size: 30,color: Colors.white,),
                ),
              ),
              Icon(Icons.list, size: 30,color: Colors.white,),
              Icon(Icons.compare_arrows, size: 30,color: Colors.white,),
            ],
            // onTap: (index) {
            //   if(index==0){
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>),);
            //   }
            // },
          ),
          body: Container(
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
                        child: Text('Leave Type',style: TextStyle(color: Color(0xffffffff),fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                      ),
                      SizedBox(height: 10,),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 120,
                  width: SizeConfig.screenWidth,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        margin: EdgeInsets.all(8.0),
                        width: SizeConfig.screenWidth!*0.55,
                        height: SizeConfig.screenHeight!*0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xff3D73DD),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset('assets/attendance/profile.png',width: 40,),
                                  ),
                                  Container(
                                    width: SizeConfig.screenWidth!*0.30,
                                    child: Text('235 / 6',style: TextStyle(color: Color(0xffffffff),fontSize: 24,fontFamily: 'RB'),textAlign: TextAlign.center,),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              // padding: EdgeInsets.only(left: 10),
                              child: Text('  Today Presents',
                                style: TextStyle(color: Color(0xffffffff),fontSize: 16,fontFamily: 'RR'),textAlign: TextAlign.left,),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              width: SizeConfig.screenWidth!*0.55,
                              child: LinearPercentIndicator(
                                progressColor: Colors.yellow,
                                backgroundColor: Colors.white,
                                lineHeight: 4,
                                percent: 0.8,

                                trailing: Container(),
                                leading: Container(),
                                animation: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        margin: EdgeInsets.all(8.0),
                        width: SizeConfig.screenWidth!*0.55,
                        height: SizeConfig.screenHeight!*0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xffECEDFF),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset('assets/attendance/profile.png',width: 40,),
                                  ),
                                  Container(
                                    width: SizeConfig.screenWidth!*0.30,
                                    child: Text('8',style: TextStyle(color: Color(0xff5A5A5A),fontSize: 24,fontFamily: 'RB'),textAlign: TextAlign.center,),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              // padding: EdgeInsets.only(left: 10),
                              child: Text('  Planned Leaves',
                                style: TextStyle(color: Color(0xff656666),fontSize: 16,fontFamily: 'RR'),textAlign: TextAlign.left,),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              width: SizeConfig.screenWidth!*0.55,
                              child: LinearPercentIndicator(
                                progressColor: Color(0xff0033CC),
                                backgroundColor: Colors.white,
                                lineHeight: 4,
                                percent: 0.8,

                                trailing: Container(),
                                leading: Container(),
                                animation: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0,),
                LeaveDataTable2 (
                  voidCallback:(){

                    scaffoldkey.currentState!.openDrawer();
                  },
                  topMargin: 5,
                  gridBodyReduceHeight: 400 ,
                  gridData: data,
                  gridDataRowList: gridHeaderList,
                  // func: (i){
                  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>AttenSatus()),);
                  // },
                )
              ],
            ),
          ),
        )
    );
  }
}
