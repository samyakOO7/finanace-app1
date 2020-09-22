import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Contact_us extends StatelessWidget {
  final String currentUserID;
  Contact_us({@required this.currentUserID});
  @override
  Widget build(BuildContext context) {
    return MyHomePage(
      currentUserID: currentUserID,
    );
  }
}

class MyHomePage extends StatefulWidget {
  String currentUserID;
  MyHomePage({Key key, @required this.currentUserID}) : super(key: key);

  @override
  _MyHomePageState createState() =>
      _MyHomePageState(currentUserID: currentUserID);
}

class _MyHomePageState extends State<MyHomePage> {
  List ques = [], supcategory = [];
  void getQues() async {
    var url2 =
        'http://sanjayagarwal.in/Finance App/UserApp/Support/SupportCategory.php';
    final response2 = await http.post(
      url2,
      body: jsonEncode(<String, String>{
        "UserID": currentUserID,
      }),
    );
    var message2 = await jsonDecode(response2.body);
    print("****************************************");
    print(message2);
    print("****************************************");
    setState(() {
      supcategory = message2;
    });
    var url = 'http://sanjayagarwal.in/Finance App/support.php';
    final response = await http.post(
      url,
      body: jsonEncode(<String, String>{
        "UserID": currentUserID,
      }),
    );
    var message = await jsonDecode(response.body);
    print("****************************************");
    print(message);
    print("****************************************");
    setState(() {
      ques = message;
    });
  }

  @override
  void initState() {
    print("****************************************");
    print(currentUserID);
    print("****************************************");
    getQues();
    // TODO: implement initState
    super.initState();
  }

  String currentUserID;
  _MyHomePageState({@required this.currentUserID});
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();
  Icon searchIcon = Icon(Icons.search);
  Widget appBarTitle = Text(
    'SUPPORT',
    style: TextStyle(
      color: Color(0xff373D3F),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xff373D3F),
        ),
        actions: <Widget>[
          IconButton(
            icon: searchIcon,
            onPressed: () {
              setState(() {
                if (this.searchIcon.icon == Icons.search) {
                  this.searchIcon = Icon(Icons.close);
                  this.appBarTitle = TextField(
                    style: TextStyle(),
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        hintText: 'Search Question'),
                  );
                } else {
                  this.searchIcon = Icon(Icons.search);
                  this.appBarTitle = Text(
                    'SUPPORT',
                    style: TextStyle(
                      fontSize: 28.0,
                      color: Color(0xff373D3F),
                    ),
                  );
                }
              });
            },
            color: Colors.black,
          ),
        ],
        backgroundColor: Color(0xff63E2E0),
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: appBarTitle,
      ),
      body: Container(
        child: ListView.builder(
            itemCount: ques.length,
            itemBuilder: (BuildContext cntx, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Column(
                  children: <Widget>[
                    ExpansionTile(
                      title: Text(ques[index]["sname"]),
                      children: <Widget>[
                        Divider(
                          thickness: 0.8,
                          height: 1.0,
                        ),
                        ExpansionTile(
                          title: Text(ques[index]["question"]),
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(ques[index]['answer']),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 0.4,
                      height: 1.0,
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
