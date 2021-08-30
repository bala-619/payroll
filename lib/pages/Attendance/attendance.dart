import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class Attendance extends StatefulWidget {
  VoidCallback voidCallback;
  Attendance({required this.voidCallback});

  // const Attendance({Key? key}) : super(key: key);


  @override

  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  ScrollController? silverController;
  double silverBodyTopMargin=0;
  List<DateTime?> picked=[];
  int selIndex=-1;

  TextEditingController nameTextController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController vehNoController = new TextEditingController();

  bool name=false;
  bool password=false;
  bool email=false;
  bool emailValid=true;
  bool isLoad=false;

  int? userGroupId=null;
  String? userGroupName=null;


  List<UserGroupModel> userGroupList=[
    UserGroupModel(userGroup: "Admin", userGroupId: 1),
    UserGroupModel(userGroup: "General User", userGroupId: 2),
    UserGroupModel(userGroup: "Sales Executive", userGroupId: 3),
  ];


  @override
  void initState() {

    WidgetsBinding.instance!.addPostFrameCallback((_){

      silverController=new ScrollController();

      setState(() {
        silverBodyTopMargin=0;
      });

      silverController!.addListener(() {
        if(silverController!.offset>310){
          setState(() {
            silverBodyTopMargin=50-(-(silverController!.offset-370));

            if(silverBodyTopMargin<0){
              silverBodyTopMargin=0;
            }
          });
        }
        else if(silverController!.offset<340){
          setState(() {
            silverBodyTopMargin=0;
          });
        }
        /*if(silverController!.offset>250){
          setState(() {
            silverBodyTopMargin=50-(-(silverController!.offset-300));
            if(silverBodyTopMargin<0){
              silverBodyTopMargin=0;
            }
          });
        }
        else if(silverController!.offset<270){
          setState(() {
            silverBodyTopMargin=0;
          });
        }*/
      });
    });
    super.initState();
  }

  @override
  late  double width,height,width2;
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    final node = FocusScope.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor:Color(0XFF1025A4),
        body: Stack(
          children: [
            NestedScrollView(
              controller: silverController,
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    elevation: 0,
                    toolbarHeight: 0,
                  //  backgroundColor:Color(0XFF5058E7),
                    leading: Container(),
                    actions: [
                     /* Container(
                        height: 50,
                        width:width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            *//* CancelButton(
                                ontap: (){
                                  Navigator.pop(context);
                                },
                              ),*//*
                            Padding(
                              padding: const EdgeInsets.only(left:8.0, right: 8.0),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.pop(context,);
                                },
                                child: SvgPicture.asset("assets/login/backward-01.svg",width: 25,color:Colors.white ,),
                              ),
                            ),
                            Text("Profile",
                              style: TextStyle(fontFamily: 'RR',fontSize: 16),
                            ),


                            SizedBox(width: 20,)
                          ],
                        ),
                      )*/
                    ],
                    expandedHeight: 370.0,
                    floating: false,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                        background: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Color(0xff3366FF), Color(0xff244BD7),Color(0xff1025A4),],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )
                            ),
                         // margin:EdgeInsets.only(top: 55),
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width:width,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0, right: 8.0),
                                      child: GestureDetector(
                                      onTap: (){
                                      Navigator.pop(context,);
                                      },
                                      child: SvgPicture.asset("assets/login/backward-01.svg",width: 25,color:Colors.white ,),
                                      ),
                                      ),
                                      Text("Profile",
                                      style: TextStyle(fontFamily: 'RR',fontSize: 16,color:Colors.white),
                                      ),
                                    SizedBox(width: 20,)
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Image.asset("assets/attendance/profile.png",width: 100,),
                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                      child: Text('Mr.Balasubramaniyan',style:TextStyle(fontFamily: 'RB',fontSize: 16,color:Colors.white)),
                                    ),
                                    SizedBox(height: 5,),
                                    Container(
                                      child: Text('UI/UX Design Team',style:TextStyle(fontFamily: 'RR',fontSize: 16,color:Colors.white)),
                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                      child: Text('Web Developer',style:TextStyle(fontFamily: 'RI',fontSize: 14,color:Colors.white)),
                                    ),
                                    SizedBox(height: 5,),
                                    Container(
                                      padding: const EdgeInsets.all(4.0),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                        color: Color(0xff3366FF)
                                      ),
                                      child: Text('Employee ID : FT-0001',style:TextStyle(fontFamily: 'RR',fontSize: 14,color:Colors.white)),
                                    ),
                                    SizedBox(height: 5,),
                                    Container(
                                      child: Text('Date of Join : 1st Jan 2019',style:TextStyle(fontFamily: 'RR',fontSize: 14,color:Colors.white)),
                                    ),
                                    SizedBox(height: 20,),
                                    Container(
                                      width: width*0.9,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height:60,
                                            padding: const EdgeInsets.all(8.0),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: Color(0xff3366FF)
                                            ),
                                            child: SvgPicture.asset('assets/attendance/face-id-01.svg',color:Colors.white,width: 40,),
                                          ),
                                          Container(
                                            height:60,
                                            padding: const EdgeInsets.all(8.0),
                                            child: SvgPicture.asset('assets/attendance/finger print-01.svg',color:Color(0XFF0278F6),width: 40,),
                                          ),
                                          Container(
                                            height:60,
                                            padding: const EdgeInsets.all(8.0),
                                            child: SvgPicture.asset('assets/attendance/touch-01.svg',color:Color(0XFF0278F6),width: 40,),
                                          ),
                                          Container(
                                            height:60,
                                            padding: const EdgeInsets.all(8.0),
                                            child: SvgPicture.asset('assets/attendance/touch-01.svg',color:Color(0XFF0278F6),width: 40,),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),

                        )
                    ),
                  ),
                ];
              },
              body: Container(
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.only(top: silverBodyTopMargin),
                // padding: EdgeInsets.only(top: 50,bottom: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                  color: Color(0xFFffffff),
                ),
                child: Expanded(
                  child: ListView(
                        children: [
                          SizedBox(height: 10,),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                             child: Text('Personal Information',style:TextStyle(fontFamily: 'RB',fontSize: 16,color:Colors.black)),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.only(left: 15,right: 15),
                            padding: EdgeInsets.only(left: 15,right: 15),
                            width: width*0.9,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFF2F3F7),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text('Phone Number :',style:TextStyle(fontFamily: 'RR',fontSize: 14,color:Color(0Xff464747))),
                                ),

                                Container(
                                  child: Text('7550286133',style:TextStyle(fontFamily: 'RR',fontSize: 14,color:Color(0Xff464747))),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.only(left: 15,right: 15),
                            padding: EdgeInsets.only(left: 15,right: 15),
                            width: width*0.9,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFF2F3F7),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text('Email ID :',style:TextStyle(fontFamily: 'RR',fontSize: 14,color:Color(0Xff464747))),
                                ),

                                Container(
                                  child: Text('bala@gmail.com',style:TextStyle(fontFamily: 'RR',fontSize: 14,color:Color(0Xff464747))),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.only(left: 15,right: 15),
                            padding: EdgeInsets.only(left: 15,right: 15),
                            width: width*0.9,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFF2F3F7),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text('Birthday :',style:TextStyle(fontFamily: 'RR',fontSize: 14,color:Color(0Xff464747))),
                                ),

                                Container(
                                  child: Text('17-August',style:TextStyle(fontFamily: 'RR',fontSize: 14,color:Color(0Xff464747))),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.only(left: 15,right: 15),
                            padding: EdgeInsets.only(left: 15,right: 15),
                            width: width*0.9,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFF2F3F7),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text('Address :',style:TextStyle(fontFamily: 'RR',fontSize: 14,color:Color(0Xff464747))),
                                ),

                                Align(
                                  alignment: AlignmentDirectional.centerEnd,
                                  child: Container(
                                    width: 230,
                                    child: Text('N0:49, TTS Nagar,4th street,Thiruverkadu,chennai-600077 ',style:TextStyle(fontFamily: 'RR',fontSize: 14,color:Color(0Xff464747))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.only(left: 15,right: 15),
                            padding: EdgeInsets.only(left: 15,right: 15),
                            width: width*0.9,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFF2F3F7),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text('Report To :',style:TextStyle(fontFamily: 'RR',fontSize: 14,color:Color(0Xff464747))),
                                ),

                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Image.asset("assets/attendance/profile.png",width: 30,),
                                      ),
                                      SizedBox(width: 10,),
                                      Text('Mr.Muthu',style:TextStyle(fontFamily: 'RR',fontSize: 14,color:Color(0Xff464747))),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          SizedBox(height: 20,),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Text('Bank Information',style:TextStyle(fontFamily: 'RB',fontSize: 16,color:Colors.black)),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.only(left: 15,right: 15),
                            padding: EdgeInsets.only(left: 15,right: 15),
                            width: width*0.9,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFF2F3F7),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text('Bank Name :',style:TextStyle(fontFamily: 'RR',fontSize: 14,color:Color(0Xff464747))),
                                ),

                                Container(
                                  child: Text('ICICI Bank',style:TextStyle(fontFamily: 'RR',fontSize: 14,color:Color(0Xff464747))),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.only(left: 15,right: 15),
                            padding: EdgeInsets.only(left: 15,right: 15),
                            width: width*0.9,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFF2F3F7),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text('Bank Account No :',style:TextStyle(fontFamily: 'RR',fontSize: 14,color:Color(0Xff464747))),
                                ),

                                Container(
                                  child: Text('123456789012',style:TextStyle(fontFamily: 'RR',fontSize: 14,color:Color(0Xff464747))),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.only(left: 15,right: 15),
                            padding: EdgeInsets.only(left: 15,right: 15),
                            width: width*0.9,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFF2F3F7),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text('IFSC Code :',style:TextStyle(fontFamily: 'RR',fontSize: 14,color:Color(0Xff464747))),
                                ),

                                Container(
                                  child: Text('ICI0008b',style:TextStyle(fontFamily: 'RR',fontSize: 14,color:Color(0Xff464747))),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.only(left: 15,right: 15),
                            padding: EdgeInsets.only(left: 15,right: 15),
                            width: width*0.9,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFF2F3F7),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text('PAN No :',style:TextStyle(fontFamily: 'RR',fontSize: 14,color:Color(0Xff464747))),
                                ),

                                Container(
                                  child: Text('DBYW6954FP',style:TextStyle(fontFamily: 'RR',fontSize: 14,color:Color(0Xff464747))),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                        ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class UserGroupModel{
  int userGroupId;
  String userGroup;
  UserGroupModel({required this.userGroup,required this.userGroupId});
}