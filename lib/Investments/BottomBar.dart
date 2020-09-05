import 'package:flutter/material.dart';

import 'InvestmentPackDetails.dart';
import 'PacksInfo.dart';

class Recommend extends StatefulWidget {
  @override
  _RecommendState createState() => _RecommendState();
}

class _RecommendState extends State<Recommend> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'Recommended for you',
                style: TextStyle(
                    color: Color(0xff373D3F),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: height * 0.38,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: recommend.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1.0, // soften the shadow
                                  spreadRadius: 0, //extend the shadow
                                ),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  recommend[index].name,
                                  style: TextStyle(
                                    color: Color(0xff373D3F),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder:
                                                      (BuildContext context) =>
                                                          InvestmentPackPage(
                                                              recommend[index]
                                                                  .name)));
                                        },
                                        child: Icon(Icons.arrow_forward_ios)),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Text('Min. Invest'),
                                        Text(
                                          recommend[index].minAmt,
                                          style: TextStyle(
                                            color: Color(0xff373D3F),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text('Schemes'),
                                        Text(
                                          recommend[index].schemes,
                                          style: TextStyle(
                                            color: Color(0xff373D3F),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text('Returns'),
                                        Text(
                                          recommend[index].returns,
                                          style: TextStyle(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      recommend[index].type,
                                      style: TextStyle(
                                        color: Color(0xff373D3F),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AllPacks extends StatefulWidget {
  @override
  _AllPacksState createState() => _AllPacksState();
}

class _AllPacksState extends State<AllPacks> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'All Investment Packs',
                style: TextStyle(
                    color: Color(0xff373D3F),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: height * 0.6,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: all.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1.0, // soften the shadow
                                  spreadRadius: 0, //extend the shadow
                                ),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  all[index].name,
                                  style: TextStyle(
                                    color: Color(0xff373D3F),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        InvestmentPackPage(
                                                            all[index].name)));
                                      },
                                      child: Icon(Icons.arrow_forward_ios),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Text('Min. Invest'),
                                        Text(
                                          all[index].minAmt,
                                          style: TextStyle(
                                            color: Color(0xff373D3F),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text('Schemes'),
                                        Text(
                                          all[index].schemes,
                                          style: TextStyle(
                                            color: Color(0xff373D3F),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text('Returns'),
                                        Text(
                                          all[index].returns,
                                          style: TextStyle(
                                            color: Colors.green,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      all[index].type,
                                      style: TextStyle(
                                        color: Color(0xff373D3F),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
