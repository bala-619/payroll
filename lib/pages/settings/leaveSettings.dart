import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class LeaveSettings extends StatefulWidget {


  @override
  _LeaveSettingsState createState() => _LeaveSettingsState();
}

class _LeaveSettingsState extends State<LeaveSettings> {
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
                      child: Text('Leave Settings',style: TextStyle(color: Color(0xffffffff),fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                width: width*0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(color: Color(0XFF4B5AFF).withOpacity(0.25), spreadRadius: 3,blurRadius: 7,  offset: Offset(0, 4),),
                        ],
                        color: Colors.indigoAccent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Add Leave Type',style: TextStyle(color: Color(0xffffffff),fontSize: 16,fontFamily: 'RR'),),
                      ),
                    ),
                    Container(
                      child: Text('Add Leave Type',style: TextStyle(color: Color(0xff676767),fontSize: 16,fontFamily: 'RR'),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                width: width*0.9,
                height: height-280,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [

                      SizedBox(height:20,),

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
