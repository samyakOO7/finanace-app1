import 'package:flutter/material.dart';

class ForgetPassPage extends StatefulWidget {
  @override
  _ForgetPassPageState createState() => _ForgetPassPageState();
}

class _ForgetPassPageState extends State<ForgetPassPage> {
  bool linkSend = false;
  bool isEmail = false;
  String defineText(isEmail,linkSend){
    String finalStatement;
    if(linkSend == false){
      finalStatement = '';
    }
    else{
      if(isEmail){
        finalStatement = 'A link is sent to the above Email to change your password \n\*Please check your MailBox and Spams\*';
      }
      else{
        finalStatement = 'A link is sent to the above Phone No. to change your password \n\*Please check your SMS\*';
      }
    }
    return finalStatement;
  }
  @override
  Widget build(BuildContext context) {
    double tileHeight = MediaQuery.of(context).size.height;
    double tileWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: tileHeight/6,
                  width: tileWidth,
                  color: Colors.white,
                  child: Image.asset('assets/images/lock.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(

                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      hintText: 'Phone No. or Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                RaisedButton(
                  color: Color(0xff63E2E0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Color(0xff373D3F),
                        fontSize: tileHeight/35,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      linkSend = true;
                    });
                  },
                ),
                SizedBox(height: 30,),
                if(linkSend)(
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't received link? ",
                        style: TextStyle(
                            color: Color(0xff373D3F), fontSize: tileWidth* 0.04),
                      ),
                      GestureDetector(
                        onTap: () {

                        },
                        child: Text(
                          'Resend Link',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff63E2E0),
                              fontSize: tileWidth * 0.04),
                        ),
                      ),
                    ],
                  )
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      defineText(isEmail, linkSend),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff373D3F), fontSize: tileWidth* 0.04),
                    ),
                  ),
                ),
                SizedBox(height: tileHeight/6,)

              ],
            ),
          ),

      ),
      ),
    );
  }
}
