import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'AddGoals.dart';
import 'GoalsType.dart';
import 'YourGoals.dart';
import 'modifygoals.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class NewGoalsPage extends StatefulWidget {
  String currentUserID;
  NewGoalsPage({@required this.currentUserID});
  @override
  _NewGoalsPageState createState() =>
      _NewGoalsPageState(currentUserID: currentUserID);
}

class _NewGoalsPageState extends State<NewGoalsPage> {
  String currentUserID;
  _NewGoalsPageState({@required this.currentUserID});
  int current = 0;
  void changes(int index) {
    setState(() {
      current = index;
    });
  }
  Future getGoals() async {
    var url = 'http://sanjayagarwal.in/Finance App/GoalDetails.php';
    final response = await http.post(
      url,
      body: jsonEncode(<String, String>{
        "UserID": currentUserID,
      }),
    );
    var message = jsonDecode(response.body);
    print("****************************************");
    print(message);
    print("****************************************");
  }

  @override
  void initState() {
    print("****************************************");
    print(currentUserID);
    print("****************************************");
    getGoals();
    // TODO: implement initState
    super.initState();
  }

  Widget yourGoals(BuildContext context, List typeGoal, double height,
      double width, List goal_info) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: goal_info.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1.0, // soften the shadow
                          spreadRadius: 0, //extend the shadow
                        ),
                      ]),
                  height: height * 0.3,
                  width: width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Image.asset(
                                      goal_info[index].type.imageUrl),
                                  height: 50,
                                  width: 50,
                                )
                              ],
                            ),
                            Text(
                              goal_info[index].name,
                            ),
                            PopupMenuButton(
                              icon: Icon(Icons.more_horiz),
                              onSelected: (value) {
                                if (value == 1) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              ModifyGoalsPage(
                                                goal_info[index].type.id,
                                                goal_info[index].name,
                                                goal_info[index].value,
                                                goal_info[index].year,
                                                currentUserID: currentUserID,
                                              )));
                                }
                                if (value == 2) {
                                  print("Completed");
                                }
                                if (value == 3) {
                                  print("Deleted");
                                }
                              },
                              itemBuilder: (context) => [
                                PopupMenuItem(
                                  value: 1,
                                  child: Text("Edit"),
                                ),
                                PopupMenuItem(
                                  value: 2,
                                  child: Text("Mark as completed"),
                                ),
                                PopupMenuItem(
                                  value: 3,
                                  child: Text("Delete goal"),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(6.0),
                        child: LinearPercentIndicator(
                          lineHeight: 14.0,
                          percent: (goal_info[index].completion) / 100,
                          backgroundColor: Colors.grey,
                          progressColor: Color(0xff63E2E0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: (width > 350)
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Achieve by: ",
                                        style:
                                            TextStyle(color: Color(0xff373D3F)),
                                      ),
                                      Text(goal_info[index].year,
                                          style: TextStyle(
                                              color: Color(0xff373D3F))),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text("Target: ",
                                          style: TextStyle(
                                              color: Color(0xff373D3F))),
                                      Text(goal_info[index].value,
                                          style: TextStyle(
                                              color: Color(0xff373D3F))),
                                    ],
                                  ),
                                ],
                              )
                            : Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Achieve by: ",
                                        style:
                                            TextStyle(color: Color(0xff373D3F)),
                                      ),
                                      Text(goal_info[index].year,
                                          style: TextStyle(
                                              color: Color(0xff373D3F))),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text("Target: ",
                                          style: TextStyle(
                                              color: Color(0xff373D3F))),
                                      Text(goal_info[index].value,
                                          style: TextStyle(
                                              color: Color(0xff373D3F))),
                                    ],
                                  ),
                                ],
                              ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    final List<Widget> goalsoptions = [
      yourGoals(context, currentGoals, height, width, ownCurrentGoals),
      yourGoals(context, completedGoals, height, width, ownCompletedGoals)
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xff373D3F),
        ),
        backgroundColor: Color(0xff63E2E0),
        centerTitle: true,
        title: Text(
          'MY GOALS',
          style: TextStyle(color: Color(0xff373D3F)),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff63E2E0),
        currentIndex: current,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        onTap: changes,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            title: Text("Current Goals"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text("Completed Goals"),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: Text(
                      current == 0 ? "Current Goals" : "Completed Goals",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => AddGoals(
                                currentUserID: currentUserID,
                              )));
                },
                child: Text(' + Add '),
                color: Color(0xff63E2E0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ],
          ),
          goalsoptions[current],
        ],
      ),
    );
  }
}
