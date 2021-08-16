import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payroll/model/themeModule.dart';


class ApprovalSettings extends StatefulWidget {


  @override
  _ApprovalSettingsState createState() => _ApprovalSettingsState();
}

class _ApprovalSettingsState extends State<ApprovalSettings> {
  GlobalKey <ScaffoldState> scaffoldkey=new GlobalKey<ScaffoldState>();

  bool theme=false;
  @override
  late  double width,height,width2;
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    return SafeArea(
      child: Scaffold(
        body: Container(
          color:Colors.white,
          child: Column(
            children: [
              Container(
                width: width,
                height: 70,
                color: Color(0xff4852FF),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:8.0, right: 8.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context,);
                        },
                        child: SvgPicture.asset("assets/login/backward-01.svg",width: 30,color:Colors.white ,),
                      ),
                    ),
                    Container(
                      child: Text('Approval Settings',style: TextStyle(color: Color(0xffffffff),fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: width*0.9,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                      children:[
                        Container(
                          height: 30,
                         width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            // boxShadow: [
                            //   BoxShadow(color: Colors.green, spreadRadius: 3),
                            // ],
                            color: Colors.indigoAccent,
                          ),
                          child: Center(child: Text('Expenses',style: TextStyle(color: Color(0xffffffff),fontSize: 14,fontFamily: 'RR'),)),
                        ),
                        Container(
                          height: 20,
                          width: 100,
                          child: Center(child: Text('Offer',style: TextStyle(color: Color(0xff676767),fontSize: 14,fontFamily: 'RR'),)),
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          child: Center(child: Text('Leave',style: TextStyle(color: Color(0xff676767),fontSize: 14,fontFamily: 'RR'),)),
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          child: Center(child: Text('Resignation',style: TextStyle(color: Color(0xff676767),fontSize: 14,fontFamily: 'RR'),)),
                        ),

                      ]
                  ),
                ),
              ),
              Container(
                width: width*0.9,
                height: height-280,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [

                      SizedBox(height:20,),
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Container(
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                    child: Text('Expense Approval Settings',style: TextStyle(color: Color(0xff7C7B82),fontSize: 16,fontFamily: 'RB'),)
                                ),
                                Container(
                                  child: Text('Default Expense Approval',style: TextStyle(color: Color(0xff7C7B82),fontSize: 14,fontFamily: 'RR'),),
                                ),
                            ],
                          ) ,
                        ),
                      ),
                      SizedBox(height: 20.0,),
                  //    Spacer(),
                      Column(
                        children: [
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // boxShadow: [
                              //   BoxShadow(color: Colors.green, spreadRadius: 3),
                              // ],
                              color: Colors.indigoAccent,

                            ),
                            child:Padding(
                              padding:  EdgeInsets.only(left: 8.0,right: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      child: Text('CEO',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xffffffff),fontFamily:'RR'), )
                                  ),
                                  Container(
                                    child: Icon(Icons.cancel_outlined,
                                      color: Colors.white,
                                      size: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            ) ,
                          ),
                          SizedBox(height: 15,),
                          Container(
                            height: 55,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffD2D2D2)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: width*0.5,
                                    padding: EdgeInsets.only(left: 5),
                                    child:Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset("assets/settings/condo.png",width: 23,color:Color(0xffB6B6B6) ,fit:BoxFit.cover,),
                                        Text('Select Approval - 2',style: TextStyle(fontSize: 15,fontFamily:'RR',color:Color(0xffB6B6B6)),)
                                      ],
                                    )
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 10),
                                  child:Icon(Icons.keyboard_arrow_down,
                                    color: Color(0xff4B5AFF),
                                    size: 30.0,
                                  ),
                                )
                              ],
                            ) ,

                          ),
                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Container(
                              child:Text('Add New',style: TextStyle(fontSize: 15,fontFamily:'RR',color:Color(0xff4B5AFF)),)
                             ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 60,
                width: width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // boxShadow: [
                  //   BoxShadow(color: Colors.green, spreadRadius: 3),
                  // ],
                  color: Colors.indigoAccent,
                ),
                child:Center(child: Text('Save Changes',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xffffffff),fontFamily:'RR'), )) ,
              ),
              SizedBox(height: 15,),
            ],
          ),
        ),

      ),
    );
  }

}
