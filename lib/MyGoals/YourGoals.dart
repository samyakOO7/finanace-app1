import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
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
                                child:
                                    Image.asset(goal_info[index].type.imageUrl),
                                height: 50,
                                width: 50,
                              )
                            ],
                          ),
                          Text(
                            goal_info[index].name,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_horiz,
                              color: Color(0xff373D3F),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: LinearPercentIndicator(
                        lineHeight: 14.0,
                        percent: 0.5,
                        backgroundColor: Colors.grey,
                        progressColor: Color(0xff63E2E0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "Achieve by: ",
                                style: TextStyle(color: Color(0xff373D3F)),
                              ),
                              Text(goal_info[index].year,
                                  style: TextStyle(color: Color(0xff373D3F))),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text("Target Value ",
                                  style: TextStyle(color: Color(0xff373D3F))),
                              Text(goal_info[index].value,
                                  style: TextStyle(color: Color(0xff373D3F))),
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
