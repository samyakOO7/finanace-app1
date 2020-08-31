import 'package:flutter/material.dart';

class InsuranceHomePage extends StatefulWidget {
  @override
  _InsuranceHomePageState createState() => _InsuranceHomePageState();
}

class _InsuranceHomePageState extends State<InsuranceHomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
          'INSURANCE',
          style: TextStyle(color: Color(0xff373D3F)),
        ),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                right: 15.0,
                top: 10,
                bottom: 15,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/health.png",
                            height: 60,
                            width: 80,
                          ),
                          Text(
                            "Health Insurance",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff373D3F),
                            ),
                          ),
                        ],
                      ),
                      FlatButton(
                        onPressed: () {},
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Color(0xff63E2E0))),
                        child: Text(
                          "Get a quote",
                          style: TextStyle(
                            color: Color(0xff63E2E0),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Container(
                      height: height * 0.2,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            width: width * 0.7,
                            decoration: BoxDecoration(
                              color: Color(0xff00BBFF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Access to best healthcare for you and you family",
                                    style: TextStyle(fontSize: 19),
                                  ),
                                  FlatButton(
                                    color: Color(0xff00BBFF),
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(color: Colors.black)),
                                    onPressed: () {},
                                    child: Text('Know more'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: width * 0.7,
                            decoration: BoxDecoration(
                              color: Color(0xff32CFCB),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Access to best healthcare for you and you family",
                                    style: TextStyle(fontSize: 19),
                                  ),
                                  RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(color: Colors.black)),
                                    onPressed: () {},
                                    child: Text('Know more'),
                                    color: Color(0xff32CFCB),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Divider(
                      height: 10,
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/family.png",
                            height: 60,
                            width: 80,
                          ),
                          Text(
                            "Term Life Insurance",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff373D3F),
                            ),
                          ),
                        ],
                      ),
                      FlatButton(
                        onPressed: () {},
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Color(0xff63E2E0))),
                        child: Text(
                          "Get a quote",
                          style: TextStyle(
                            color: Color(0xff63E2E0),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Container(
                      height: height * 0.2,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            width: width * 0.7,
                            decoration: BoxDecoration(
                              color: Color(0xffEDFF96),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Access to best healthcare for you and you family",
                                    style: TextStyle(fontSize: 19),
                                  ),
                                  FlatButton(
                                    color: Color(0xffEDFF96),
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(color: Colors.black)),
                                    onPressed: () {},
                                    child: Text('Know more'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: width * 0.7,
                            decoration: BoxDecoration(
                              color: Color(0xffD49CFF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Access to best healthcare for you and you family",
                                    style: TextStyle(fontSize: 19),
                                  ),
                                  RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(color: Colors.black)),
                                    onPressed: () {},
                                    child: Text('Know more'),
                                    color: Color(0xffD49CFF),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Motor",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Divider(
                      height: 10,
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/car1.png",
                            height: 60,
                            width: 80,
                          ),
                          Text(
                            "Car Insurance",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff373D3F),
                            ),
                          ),
                        ],
                      ),
                      FlatButton(
                        onPressed: () {},
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Color(0xff63E2E0))),
                        child: Text(
                          "Get a quote",
                          style: TextStyle(
                            color: Color(0xff63E2E0),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Divider(
                      height: 10,
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Image.asset(
                              "assets/images/bike1.png",
                              height: 60,
                              width: 70,
                            ),
                          ),
                          Text(
                            "Bike Insurance",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff373D3F),
                            ),
                          ),
                        ],
                      ),
                      FlatButton(
                        onPressed: () {},
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Color(0xff63E2E0))),
                        child: Text(
                          "Get a quote",
                          style: TextStyle(
                            color: Color(0xff63E2E0),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Divider(
                      height: 10,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
