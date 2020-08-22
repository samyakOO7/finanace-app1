import 'package:flutter/material.dart';

class InsuranceHome extends StatefulWidget {
  @override
  _InsuranceHomeState createState() => _InsuranceHomeState();
}

class _InsuranceHomeState extends State<InsuranceHome> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {},
        ),
        centerTitle: true,
        backgroundColor: Color(0xff63E2E0),
        title: Text(
          'INSURANCE',
          style: TextStyle(
            color: Color(0xff373D3F),
            fontSize: 23,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Column(
                  children: [
                    Container(
                      height: h * 0.45,
                      //color: Colors.brown,
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Image.asset('assets/images/health.png'),
                              Text(
                                'Health Insurance',
                                style: TextStyle(
                                  color: Color(0xff373D3F),
                                  fontSize: 19,
                                ),
                              ),
                              RaisedButton(
                                elevation: 0,
                                onPressed: () {},
                                child: Text('Get a quote'),
                              ),
                            ],
                          ),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                height: h * 0.30,
                                width: w * 1,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: h * 0.02,
                                        width: w * 0.8,
                                        child: Card(
                                          color: Color(0xff00BBFF),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  """Access to best healthcare for
 you and you family""",
                                                  style: TextStyle(fontSize: 19),
                                                ),
                                              ),
                                              SizedBox(
                                                height: h * 0.1,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: RaisedButton(
                                                  onPressed: () {},
                                                  child: Text('Know more'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: h * 0.18,
                                        width: w * 0.8,
                                        child: Card(
                                          color: Color(0xff32CFCB),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  """Access to best healthcare for
 you and you family""",
                                                  style: TextStyle(fontSize: 19),
                                                ),
                                              ),
                                              SizedBox(
                                                height: h * 0.1,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: RaisedButton(
                                                  onPressed: () {},
                                                  child: Text('Know more'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),


                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Column(
                  children: [
                    Container(
                      height: h * 0.45,
                      //color: Colors.brown,
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Image.asset('assets/images/family.png'),
                              Text(
                                'Term Life Insurance',
                                style: TextStyle(
                                  color: Color(0xff373D3F),
                                  fontSize: 19,
                                ),
                              ),
                              RaisedButton(
                                elevation: 0,
                                onPressed: () {},
                                child: Text('Get a quote'),
                              ),
                            ],
                          ),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                height: h * 0.30,
                                width: w * 1,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: h * 0.02,
                                        width: w * 0.8,
                                        child: Card(
                                          color: Color(0xff00BBFF),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  """Access to best healthcare for
 you and you family""",
                                                  style: TextStyle(fontSize: 19),
                                                ),
                                              ),
                                              SizedBox(
                                                height: h * 0.1,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: RaisedButton(
                                                  onPressed: () {},
                                                  child: Text('Know more'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: h * 0.18,
                                        width: w * 0.8,
                                        child: Card(
                                          color: Color(0xff32CFCB),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  """Access to best healthcare for
 you and you family""",
                                                  style: TextStyle(fontSize: 19),
                                                ),
                                              ),
                                              SizedBox(
                                                height: h * 0.1,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: RaisedButton(
                                                  onPressed: () {},
                                                  child: Text('Know more'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),


                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Text('MOTOR',
              style: TextStyle(
                fontSize: 25,
              ),),
              SizedBox(
                height: 19,
              ),
              Divider(
                height: 1,
                thickness: 2,
              ),
              Container(
                height: h * 0.25,
                //color: Colors.yellow,
                child: Column(
                  children:<Widget> [
                    Row(
                      children:<Widget> [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/images/car1.png'),
                        ),
                        Text('Car Insurance',
                        style: TextStyle(
                          fontSize: 20,
                        ),),

                        SizedBox(
                          width: w * 0.2,
                        ),
                        RaisedButton(
                          onPressed: (){},
                          child: Text('Get a quote'),
                        )
                      ],
                    ),
                    Divider(
                      height: 1,
                      thickness: 2,
                    ),

                    Row(
                      children:<Widget> [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/images/bike.png'),
                        ),
                        Text('Car Insurance',
                          style: TextStyle(
                            fontSize: 20,
                          ),),

                        SizedBox(
                          width: w * 0.08,
                        ),
                        RaisedButton(
                          onPressed: (){},
                          child: Text('Get a quote'),
                        ),
                      ],
                    ),
                  ],

                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
