import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';



class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  @override
  late  double width,height,width2;
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Container(
          width: width,
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Image.asset("assets/login/signup-bg.jpg",width:280,fit:BoxFit.cover,),
              ),
              Container(
                width: width*0.6,
                alignment: Alignment.center,
                child: Text('Payroll at Your Fingertips Simplify Your Payroll Headaches',style: TextStyle(fontSize: 14,fontFamily:'RR',fontWeight: FontWeight.w500,color: Color(0xff7F7F7F)),textAlign:TextAlign.center, ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Container(
                  width: width*0.7,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // boxShadow: [
                    //   BoxShadow(color: Colors.green, spreadRadius: 3),
                    // ],
                    color: Colors.indigoAccent,
                  ),
                  child:Center(child: Text('Sign Up',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xffffffff),fontFamily:'RR'), )) ,
                ),
              ),
              GestureDetector(
                onTap : () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()),);
                },
                child: Padding(
                  padding: const EdgeInsets.only(top:10.0),
                  child: Container(
                    width: width*0.7,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff848484)),
                      borderRadius: BorderRadius.circular(10),
                      // boxShadow: [
                      //   BoxShadow(color: Colors.green, spreadRadius: 3),
                      // ],
                      color: Colors.white,
                    ),
                    child:Center(child: Text('Sign In',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff000000),fontFamily:'RR'), )) ,
                  ),
                ),
              ),
              Spacer(),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Text('(c) 2021. All Rights Reserved. Design By Scutisoft -  ',
                    style: TextStyle(fontSize: 12,color:Color(0xff000000), fontFamily:'RR'),textAlign: TextAlign.center, )
              ),
            ],
          ),

        ),
      ),
    );
  }
}
