import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payroll/widgets/EmployeeTextField.dart';
import 'package:payroll/widgets/companySettingsTextField.dart';



class AddDesignations extends StatefulWidget {


  @override
  _AddDesignationsState createState() => _AddDesignationsState();
}

class _AddDesignationsState extends State<AddDesignations> {
  GlobalKey <ScaffoldState> scaffoldkey=new GlobalKey<ScaffoldState>();
  final _text = TextEditingController();
  final _text1 = TextEditingController();
  @override
  late  double width,height,width2;
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    return SafeArea(
      child: Scaffold(
        body: Container(
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
                      child: Text('Add Designations',style: TextStyle(color: Color(0xffffffff),fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                width: width*0.9,
                height: height-140,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      EmployeeTextField(hintText: "Designations Name",),
                      SizedBox(height: 15,),
                      EmployeeTextField(hintText: "Department Name",),
                      SizedBox(height: 15,),
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // boxShadow: [
                          //   BoxShadow(color: Colors.green, spreadRadius: 3),
                          // ],
                          color: Colors.indigoAccent,
                        ),
                        child:Center(child: Text('Done',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xffffffff),fontFamily:'RR'), )) ,
                      ),
                      SizedBox(height: 15,),
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
