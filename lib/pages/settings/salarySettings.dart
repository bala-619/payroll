import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payroll/widgets/companySettingsTextField.dart';
import 'package:payroll/widgets/salarySettingsTextField.dart';



class SalarySettings extends StatefulWidget {


  @override
  _SalarySettingsState createState() => _SalarySettingsState();
}

class _SalarySettingsState extends State<SalarySettings> {
  GlobalKey <ScaffoldState> scaffoldkey=new GlobalKey<ScaffoldState>();

  bool theme=false;
  bool theme1=false;
  bool theme2=true;
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
                      child: Text('Salary Settings',style: TextStyle(color: Color(0xffffffff),fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              Container(
                width: width*0.9,
                height: height-140,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              child: Text('DA and HRA',style: TextStyle(color: Color(0xff7C7B82),fontSize: 16,fontFamily: 'RB'),)
                          ),
                          Container(
                            child: CupertinoSwitch(
                              value:theme,
                              activeColor: Color(0xffE2E2E2),
                              trackColor: Color(0xff4B5AFF),
                              onChanged: (bool value)
                              {
                                setState(() {
                                  theme=value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      SalarySettingsTextField(hintText: "Enter DA %", ),
                      SizedBox(height: 10,),
                      SalarySettingsTextField(hintText: "Enter HRA %", ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              child: Text('Provident Fund Settings',style: TextStyle(color: Color(0xff7C7B82),fontSize: 16,fontFamily: 'RB'),)
                          ),
                          Container(
                            child: CupertinoSwitch(
                              value:theme1,
                              activeColor: Color(0xffE2E2E2),
                              trackColor: Color(0xff4B5AFF),
                              onChanged: (bool value)
                              {
                                setState(() {
                                  theme1=value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      SalarySettingsTextField(hintText: "Employee Share (%)", ),
                      SizedBox(height: 10,),
                      SalarySettingsTextField(hintText: "OrganiZation Share (%)", ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              child: Text('ESI Settings',style: TextStyle(color: Color(0xff7C7B82),fontSize: 16,fontFamily: 'RB'),)
                          ),
                          Container(
                            child: CupertinoSwitch(
                              value:theme2,
                              activeColor: Color(0xffE2E2E2),
                              trackColor: Color(0xff4B5AFF),
                              onChanged: (bool value)
                              {
                                setState(() {
                                  theme2=value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      SalarySettingsTextField(hintText: "Employee Share (%)", ),
                      SizedBox(height: 10,),
                      SalarySettingsTextField(hintText: "OrganiZation Share (%)", ),
                      SizedBox(height: 10,),
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Container(
                            child: Text('TDS Settings',style: TextStyle(color: Color(0xff7C7B82),fontSize: 16,fontFamily: 'RB'),)
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Container(
                            width:width*0.4,
                              child: SalarySettingsTextField(hintText: "Salary From", )),
                          Container(
                              width:width*0.4,
                              child: SalarySettingsTextField(hintText: "Salary To", )),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Container(
                            child: Text('Add New',style: TextStyle(color: Color(0xff4B5AFF),fontSize: 14,fontFamily: 'RB'),)
                        ),
                      ),

                    ],
                  ),
                ),
              ),

            ],
          ),
        ),

      ),
    );
  }

}
