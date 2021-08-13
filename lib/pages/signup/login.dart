import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payroll/pages/mainpage/masterpage.dart';

import 'signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _text = TextEditingController();
  final _text1 = TextEditingController();
  bool _validate = false;
  @override
  late  double width,height,width2,height2;
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    height2=height-16;
    return SafeArea(
          child: Scaffold(
            body: Container(
              width: width,
              height: height,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child:GestureDetector(
                        onTap : () {
                          Navigator.pop(context,
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 28.0,top: 10),
                          child: SvgPicture.asset("assets/login/backward-01.svg",width: 30,color:Colors.black ,),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Image.asset("assets/login/login.jpg",width:280,fit:BoxFit.cover,),
                    ),
                    Container(
                      width: width,
                      height: height2-289,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40),),
                        color: Color(0xffF2F2F2),
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top:20.0),
                              child: Text('Sign In',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Color(0xff000000),fontFamily:'RR'), ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0,bottom: 5),
                              child: Text('Email Address',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff727272),fontFamily:'RR'), ),
                            ),
                          ),
                          Container(
                             width: width*0.9,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffffffff),
                            ),
                             child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              controller: _text,
                              textAlignVertical: TextAlignVertical.center,
                              textAlign: TextAlign.left,
                              maxLines: 1,
                              style:TextStyle(fontSize: 14,fontFamily:'RR',color:Color(0xff7F7F7F),),
                              decoration: InputDecoration(
                                fillColor: Color(0xffffffff),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: Colors.white)
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff929BC4)),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),

                              ),
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(RegExp('[0-9a-zA-Z@.]')),
                                LengthLimitingTextInputFormatter(20),
                              ],
                          ),
                           ),
                          SizedBox(height: 10,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0,bottom: 5),
                              child: Text('Password',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff727272),fontFamily:'RR'), ),
                            ),
                          ),
                          Container(
                            width: width*0.9,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffffffff),
                            ),

                            child: TextField(
                              keyboardType: TextInputType.visiblePassword,
                              controller: _text1,
                              textAlignVertical: TextAlignVertical.center,
                              textAlign: TextAlign.left,
                              maxLines: 1,
                              style:TextStyle(fontSize: 14,fontFamily:'RR',color:Color(0xff7F7F7F),),
                              decoration: InputDecoration(
                                fillColor: Color(0xffffffff),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: Colors.white)
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff929BC4)),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),

                              ),
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(RegExp('[0-9a-zA-Z@.]')),
                                LengthLimitingTextInputFormatter(10),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 23.0,top: 5),
                              child: Text('ForgotPassword?',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff000000),fontFamily:'RR'), ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          GestureDetector(
                            onTap: (){

                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Masterpage()),);

                            },
                            child: Container(
                              width: width*0.9,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // boxShadow: [
                                //   BoxShadow(color: Colors.green, spreadRadius: 3),
                                // ],
                                color: Colors.indigoAccent,
                              ),
                              child:Center(child: Text('Sign In',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xffffffff),fontFamily:'RR'), )) ,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 23.0,top: 5),
                              child:  GestureDetector(
                                onTap : () {
                                  Navigator.pop(context, MaterialPageRoute(builder: (context)=>Signup()),);
                                },
                                child: Text.rich(
                                  TextSpan(
                                      text: 'I m a new user ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff000000),fontFamily:'RR'),
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: '. Sign Up',
                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff6A6DD6),fontFamily:'RR'),
                                        )
                                      ]
                                  ),
                            ),
                              ),
                          ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
    );
  }
}
