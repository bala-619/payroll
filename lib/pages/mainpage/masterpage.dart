import 'package:flutter/material.dart';
import 'package:payroll/pages/mainpage/settings.dart';

import 'dashboard.dart';
class Masterpage extends StatefulWidget {
  const Masterpage({Key? key}) : super(key: key);

  @override
  _MasterpageState createState() => _MasterpageState();
}

class _MasterpageState extends State<Masterpage> {
  @override
  GlobalKey <ScaffoldState> scaffoldkey=new GlobalKey<ScaffoldState>();
  int menuSel=1;
  late  double width,height,width2;
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    return SafeArea(
        child: Scaffold(
          key: scaffoldkey,
        drawer: Container(
        height: height,
        width: width*0.7,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15))
        ),

        child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                color: Color(0xff099FAF),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Container(child: Image.asset("assets/images/logo-white.png", width:40)),
                    Container(
                      child: Text('Payroll',style: TextStyle(color: Color(0xffffffff),fontSize: 16,fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ),
              Container(
                // height: 40,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  // color: Colors.red
                  //  border: Border(bottom: BorderSide())
                ),
                child: ListTile(
                  // leading:Image.asset("assets/",width: 30),
                  title: Text('Dasboard', style: TextStyle(fontSize: 20,color:Color(0xff099FAF), fontFamily:'RR'), ),
                  onTap: (){
                    setState(() {
                      menuSel=1;
                    });
                    scaffoldkey.currentState!.openEndDrawer();
                  },

                ),
              ),
              Container(
                // height: 40,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  // color: Colors.red
                  //  border: Border(bottom: BorderSide())
                ),
                child: ListTile(
                  // leading:Image.asset("assets/",width: 30),
                  title: Text('Settings', style: TextStyle(fontSize: 20,color:Color(0xff099FAF), fontFamily:'RR'), ),
                  onTap: (){
                    setState(() {
                      menuSel=2;
                    });
                    scaffoldkey.currentState!.openEndDrawer();
                  },

                ),
              ),
              //   Divider(color: Color(0xff099FAF),thickness: 0.1,),


              // Divider(color: Color(0xff099FAF),thickness: 0.1,),
            ],
          ),
        ),
          body:menuSel==1?Dashboard(
            voidCallback:(){
              scaffoldkey.currentState!.openDrawer();
            },
          ) :menuSel==2?Settings (
            voidCallback:(){

              scaffoldkey.currentState!.openDrawer();
            },
          ) :Container(),
        ),



    );
  }
}
