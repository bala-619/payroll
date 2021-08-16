import 'package:flutter/material.dart';
import 'package:payroll/model/settingsModel.dart';
import 'package:payroll/pages/settings/approvalSettings.dart';
import 'package:payroll/pages/settings/salarySettings.dart';
import 'package:payroll/pages/settings/theme-file.dart';
import 'package:payroll/widgets/navigationBarIcon.dart';

import '../settings/add-settings.dart';


class Settings extends StatefulWidget {
  VoidCallback voidCallback;
  Settings({required this.voidCallback});


  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  GlobalKey <ScaffoldState> scaffoldkey=new GlobalKey<ScaffoldState>();
  List<SettingsModel> settingsList=[
    SettingsModel(title: "Company", img: "assets/settings/condo.png", selectColor: Color(0xff4852FF), unSelectColor: Color(0xff4852FF).withOpacity(0.3)),
    SettingsModel(title: "Localization", img: "assets/settings/placeholder.png", selectColor: Color(0xffE64545), unSelectColor: Color(0xffE64545).withOpacity(0.3)),
    SettingsModel(title: "Themes", img: "assets/settings/theme.png", selectColor: Color(0xff8165AD), unSelectColor: Color(0xff8165AD).withOpacity(0.3)),
    SettingsModel(title: "Approval", img: "assets/settings/approval.png", selectColor: Color(0xff1D8E1D), unSelectColor: Color(0xff1D8E1D).withOpacity(0.3)),
    SettingsModel(title: "Invoice", img: "assets/settings/invoice.png", selectColor: Color(0xff676767), unSelectColor: Color(0xff676767).withOpacity(0.3)),
    SettingsModel(title: "Salary", img: "assets/settings/salary.png", selectColor: Color(0xff5156DF), unSelectColor: Color(0xff5156DF).withOpacity(0.3)),
    SettingsModel(title: "Password", img: "assets/settings/padlock.png", selectColor: Color(0xff3B95D8), unSelectColor: Color(0xff3B95D8).withOpacity(0.3)),
    SettingsModel(title: "Leave", img: "assets/settings/calendar.png", selectColor: Color(0xffE3C57B), unSelectColor: Color(0xffE3C57B).withOpacity(0.3)),
  ];
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
              runSpacing: 30,
              spacing: 50,
              children: settingsList.asMap().map((i, value) => MapEntry(i, GestureDetector(
                onTap: (){
                  if(i==0){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Addsettings()),);
                  }
                  else if(i==2){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ThemeSettings()),);
                  }
                  else if(i==3){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ApprovalSettings()),);
                  }
                  else if(i==5){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SalarySettings()),);
                  }
                },
                child:  Column(
                  children: [
                    Container(
                      width: width*0.20,
                      height: width*0.20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                       // borderRadius: BorderRadius.all( Radius.circular(50)),
                        color: value.unSelectColor,
                      ),
                      child: Center(child: Image.asset(value.img,width: 40,)),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      child: Text(value.title,
                        style: TextStyle(color: Color(0xff62626C),fontSize: 15,fontFamily: 'RM'),
                      ),
                    ),
                  ],
                ),
              ))).values.toList()
            ),
          ],
        ),
      ),
      ),
    );
  }
}
