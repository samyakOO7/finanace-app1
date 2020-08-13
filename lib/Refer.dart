import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pie_chart/pie_chart.dart';

import 'components/ButtonsWidget.dart';

class Rewards extends StatefulWidget {
  @override
  _RewardsState createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  String rCode = 'ASd3f2';
  List<List> redeems = [
    ["p45ik9", 15],
    ["p45ik9", 15],
    ["p45ik9", 15],
    ["p45ik9", 15],
    ["p45ik9", 15],
    ["p45ik9", 15],
    ["p45ik9", 15],
  ];
  List<List> rewards = [
    [
      'rewards1',
      'rewards detailpoiuytrewqasdfghj kll,mnbvcxzasdfghjkl;poiuytrewqasdfghjkll,mnbvcxzsdfghjklpoiuytrewqasdfghjkl,mnbvcxzasdfghjklpoiuy'
    ],
    ['rewards1', 'rewards detail'],
    ['rewards1', 'rewards detail'],
    ['rewards1', 'rewards detail']
  ];
  Map<String, double> dataMap = new Map();
  void popUp() {
    setState(() {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                title: Text(
                  'HOW TO EARN',
                  style: TextStyle(
                    color: Color(0xff373D3F),
                  ),
                ),
                content: Container(
                  height: 300,
                  child: ListView(
                    children: List.generate(rewards.length, (int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              rewards[index][0],
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff373D3F),
                              ),
                            ),
                            Text(
                              rewards[index][1],
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff373D3F),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ));
          });
    });
  }

  @override
  void initState() {
    super.initState();
    dataMap.putIfAbsent("Redemtions", () => redeems.length.toDouble());
    dataMap.putIfAbsent("Redemtionsleft", () => 30 - redeems.length.toDouble());
  }

  @override
  Widget build(BuildContext context) {
    double tileHeight = MediaQuery.of(context).size.height;
    double tileWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('REWARDS & REFERRALS'),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: tileHeight * 0.18,
                  width: tileWidth,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PieChart(
                        dataMap: dataMap,
                        animationDuration: Duration(milliseconds: 800),
                        chartLegendSpacing: 32.0,
                        chartRadius: MediaQuery.of(context).size.width / 3.2,
                        showChartValuesInPercentage: false,
                        showChartValues: false,
                        showChartValuesOutside: false,
                        chartValueBackgroundColor: Colors.grey[200],
                        colorList: [
                          Color(0xff63e2e0),
                          Colors.black12,
                        ],
                        showLegends: false,
                        legendPosition: LegendPosition.right,
                        decimalPlaces: 0,
                        showChartValueLabel: false,
                        initialAngle: 0,
                        chartValueStyle: defaultChartValueStyle.copyWith(
                          color: Colors.blueGrey[900].withOpacity(0.9),
                        ),
                        chartType: ChartType.ring,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: tileHeight * 0.08,
                    width: tileWidth,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4.0,
                              spreadRadius: 2.0,
                              color: Colors.black12),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '$rCode',
                            style: TextStyle(
                                fontSize: tileHeight * 0.05,
                                color: Color(0xFF373D3F)),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: GestureDetector(
                                onTap: () {},
                                child: Text('Copy Code',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: tileHeight * 0.02,
                                        color: Color(0xff373D3F))),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        socialmedia('assets/images/facebook.png'),
                        space(),
                        socialtext('Facebook'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        socialmedia('assets/images/instagram.jpg'),
                        space(),
                        socialtext('Instagram'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        socialmedia('assets/images/wh.png'),
                        space(),
                        socialtext('Whatsapp'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        socialmedia('assets/images/share.png'),
                        space(),
                        socialtext('Share with'),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 4.0, horizontal: 20.0),
                  child: Container(
                    height: tileHeight * 0.3,
                    width: tileWidth,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 8.0,
                              spreadRadius: 2.0,
                              color: Colors.black12),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'HOW TO EARN',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: tileHeight * 0.03,
                            color: Color(0xff373D3F),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              child: ListView(
                                children: List.generate(
                                    rewards.length, buildTitleTile),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15, bottom: 15),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: popUp,
                              child: Text('View More Details',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: tileHeight * 0.02,
                                      color: Color(0xff373D3F))),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: tileHeight * 0.08,
                  width: tileWidth,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              hintText: 'Have a code?',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        RaisedButton(
                          color: Color(0xff63E2E0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            'Confirm',
                            style: TextStyle(
                              color: Color(0xff373D3F),
                            ),
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ),
                BottomSheet(
                  onClosing: () {},
                  builder: (context) {
                    return Container(
                      height: tileHeight * 0.08,
                      width: tileWidth,
                      color: Colors.black12,
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildTitleTile(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.add),
          SizedBox(
            width: 10.0,
          ),
          Text(
            rewards[index][0],
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff373D3F),
            ),
          )
        ],
      ),
    );
  }
}
