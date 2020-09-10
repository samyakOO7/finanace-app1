import 'package:flutter/material.dart';

import 'AddGoals.dart';
import 'GoalsType.dart';
import 'YourGoals.dart';

class NewGoalsPage extends StatefulWidget {
  String currentUserID;
  NewGoalsPage({@required this.currentUserID});
  @override
  _NewGoalsPageState createState() => _NewGoalsPageState(currentUserID: currentUserID);
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
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
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
                          builder: (BuildContext context) => AddGoals(currentUserID: currentUserID,)));
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
