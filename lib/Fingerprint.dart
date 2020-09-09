import 'package:flutter/material.dart';
import 'mPinPage.dart';

class fingerPrint extends StatelessWidget {
  String currentUserID;
  @override
  Widget build(BuildContext context) {
    double tileHeight = MediaQuery.of(context).size.height;
    double tileWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Use Fingerprint to unlock',
                  style: TextStyle(fontSize: 25, color: Color(0xff373D3F),fontWeight: FontWeight.w500),),
                  SizedBox(height: 35,),
                  Icon(Icons.fingerprint,color: Color(0xff63E2E0),size: tileHeight/8,),
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Divider(
                          color: Color(0xff616161),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "OR",
                          style: TextStyle(
                            color: Color(0xff373D3F),
                            fontSize: tileWidth * 0.04,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Color(0xff616161),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  PassCodeScreen()));

                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Enter mPin',
                        style: TextStyle(
                            fontSize: tileWidth * 0.05, color: Color(0xff373D3F)),
                      ),
                    ),
                    color: Color(0xff63E2E0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
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
