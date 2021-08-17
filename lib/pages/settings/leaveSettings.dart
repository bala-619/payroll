import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LeaveSettings extends StatefulWidget {


  @override
  _LeaveSettingsState createState() => _LeaveSettingsState();
}

class _LeaveSettingsState extends State<LeaveSettings> with TickerProviderStateMixin{
  GlobalKey <ScaffoldState> scaffoldkey=new GlobalKey<ScaffoldState>();
  late TabController _tabController;
  bool theme=false;
  bool theme1=false;
  bool theme2=false;
  bool theme3=false;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2,  vsync: this);
  }
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
                      child: Text('Leave Type',style: TextStyle(color: Color(0xffffffff),fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                height: 50,
                margin: EdgeInsets.fromLTRB(10,0,10,0),
                child: TabBar(
                  controller: _tabController,
                  // give the indicator a decoration (color and border radius)
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      50.0,
                    ),
                    color: Colors.indigoAccent,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0XFF4B5AFF).withOpacity(0.25),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  unselectedLabelStyle: TextStyle(fontSize: 16,fontFamily: 'RR'),
                  labelStyle: TextStyle(fontSize: 16,fontFamily: 'RR'),
                  tabs: [
                    Tab(
                      text: 'Add Leave Type',
                    ),
                    Tab(
                      text: 'Add Govt Holiday',
                    ),
                  ],
                ),
              ),

              Container(
                height: height-205,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: width*0.9,
                          height: height-280,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                Container(
                                  width: width,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: DataTable(

                                      columns: <DataColumn>[
                                        DataColumn(
                                          label: Text(
                                            '#',
                                            style: TextStyle(fontFamily: 'RR',fontSize:14,color:Color(0xff4B5AFF)),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Text(
                                            'Leave Type',
                                            style: TextStyle(fontFamily: 'RR',fontSize:14,color:Color(0xff4B5AFF)),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Text(
                                            'Leave Days',
                                            style: TextStyle(fontFamily: 'RR',fontSize:14,color:Color(0xff4B5AFF)),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Text(
                                            'Status',
                                            style: TextStyle(fontFamily: 'RR',fontSize:14,color:Color(0xff4B5AFF)),
                                          ),
                                        ),
                                      ],
                                      rows: <DataRow>[
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(Text('1')),
                                            DataCell(Text('Casual Leave')),
                                            DataCell(Text('12 Days')),
                                            DataCell(Container(
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
                                            ),),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(Text('2')),
                                            DataCell(Text('Medical Leave')),
                                            DataCell(Text('12 Days')),
                                            DataCell(Container(
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
                                            ),),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(Text('3')),
                                            DataCell(Text('Govt Holiday')),
                                            DataCell(Text('23 Days')),
                                            DataCell(Container(
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
                                            ),),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
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

                    Column(
                      children: [
                        SizedBox(height: 20,),
                        Container(
                          height: 90,
                          width: width*0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(color: Colors.black38, spreadRadius:0,blurRadius: 0),
                            ],
                            color: Colors.white,
                          ),
                          child:Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: width*0.17,
                                height: width*0.17,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  // borderRadius: BorderRadius.all( Radius.circular(50)),
                                  color:Color(0xff5058E7).withOpacity(0.3) ,
                                ),
                                child: Center(child: Image.asset("assets/settings/theme-icon/light.png",width: 40,)),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        child: Text('28 Days',style: TextStyle(color: Color(0xff7C7B82),fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'RR'),)
                                    ),
                                    Container(
                                      child: Text('Do you want Edit Holidays',style: TextStyle(color: Color(0xffE2E2E2),fontSize: 14,fontWeight: FontWeight.w400,fontFamily: 'RR'),),
                                    ),
                                  ],
                                ),
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
                          ) ,
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              /*Container(
                width: width*0.9,
                height: height-280,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                        width: width,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                            child: DataTable(

                              columns: <DataColumn>[
                                  DataColumn(
                                  label: Text(
                                  '#',
                                  style: TextStyle(fontFamily: 'RR',fontSize:14,color:Color(0xff4B5AFF)),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Leave Type',
                                  style: TextStyle(fontFamily: 'RR',fontSize:14,color:Color(0xff4B5AFF)),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Leave Days',
                                  style: TextStyle(fontFamily: 'RR',fontSize:14,color:Color(0xff4B5AFF)),
                                ),
                              ),
                                DataColumn(
                                  label: Text(
                                    'Status',
                                    style: TextStyle(fontFamily: 'RR',fontSize:14,color:Color(0xff4B5AFF)),
                                  ),
                                ),
                              ],
                        rows: <DataRow>[
                          DataRow(
                              cells: <DataCell>[
                              DataCell(Text('1')),
                              DataCell(Text('Casual Leave')),
                              DataCell(Text('12 Days')),
                                DataCell(Container(
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
                                ),),
                              ],
                            ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('2')),
                              DataCell(Text('Medical Leave')),
                              DataCell(Text('12 Days')),
                              DataCell(Container(
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
                              ),),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('3')),
                              DataCell(Text('Govt Holiday')),
                              DataCell(Text('23 Days')),
                              DataCell(Container(
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
                              ),),
                            ],
                          ),

                        ],
                        ),
                          ),
                      ),
                      SizedBox(height:20,),

                    ],
                  ),
                ),
              ),*/

            ],
          ),
        ),

      ),
    );
  }

}
