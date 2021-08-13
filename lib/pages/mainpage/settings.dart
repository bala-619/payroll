import 'package:flutter/material.dart';
import 'package:payroll/widgets/navigationBarIcon.dart';

import 'add-settings.dart';


class Settings extends StatefulWidget {
  VoidCallback voidCallback;
  Settings({required this.voidCallback});


  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  GlobalKey <ScaffoldState> scaffoldkey=new GlobalKey<ScaffoldState>();
  @override
  late  double width,height,width2;
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    return SafeArea(
      child:Scaffold(
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
                    child: Text('Settings',style: TextStyle(color: Color(0xffffffff),fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Wrap(
              runSpacing:20.0,
              spacing:20.0,
              children: [
                GestureDetector(
                  onTap : () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Addsettings()),);
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all( Radius.circular(50)),
                          color: Color(0xff4852FF),
                        ),
                        child: Center(child: Image.asset("assets/settings/condo.png",width: 40,)),
                      ),
                      Container(
                        child: Text('Company',style: TextStyle(color: Color(0xff62626C),fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'RR'),),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all( Radius.circular(50)),
                        color: Color(0xffFFF1F1),
                      ),
                      child: Center(child: Image.asset("assets/settings/placeholder.png",width: 40,)),
                    ),
                    Container(
                      child: Text('Localization',style: TextStyle(color: Color(0xff62626C),fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'RR'),),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all( Radius.circular(50)),
                        color: Color(0xffF4EBFF),
                      ),
                      child: Center(child: Image.asset("assets/settings/theme.png",width: 40,)),
                    ),
                    Container(
                      child: Text('Themes',style: TextStyle(color: Color(0xff62626C),fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'RR'),),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all( Radius.circular(50)),
                        color: Color(0xffF3F8F2),
                      ),
                      child: Center(child: Image.asset("assets/settings/approval.png",width: 40,)),
                    ),
                    Container(
                      child: Text('Approval',style: TextStyle(color: Color(0xff62626C),fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'RR'),),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all( Radius.circular(50)),
                        color: Color(0xffF1F1F1),
                      ),
                      child: Center(child: Image.asset("assets/settings/invoice.png",width: 40,)),
                    ),
                    Container(
                      child: Text('Invoice',style: TextStyle(color: Color(0xff62626C),fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'RR'),),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all( Radius.circular(50)),
                        color: Color(0xffECEDFF),
                      ),
                      child: Center(child: Image.asset("assets/settings/salary.png",width: 40,)),
                    ),
                    Container(
                      child: Text('Salary',style: TextStyle(color: Color(0xff62626C),fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'RR'),),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all( Radius.circular(50)),
                        color: Color(0xffF2F9FF),
                      ),
                      child: Center(child: Image.asset("assets/settings/padlock.png",width: 40,)),
                    ),
                    Container(
                      child: Text('Password',style: TextStyle(color: Color(0xff62626C),fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'RR'),),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all( Radius.circular(50)),
                        color: Color(0xffFFF9E6),
                      ),
                      child: Center(child: Image.asset("assets/settings/calendar.png",width: 40,)),
                    ),
                    Container(
                      child: Text('Leave',style: TextStyle(color: Color(0xff62626C),fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'RR'),),
                    ),
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
      ),
    );
  }
}
