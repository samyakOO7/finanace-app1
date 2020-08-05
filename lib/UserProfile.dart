import 'package:flutter/material.dart';
class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}
enum SingingGender { Male, female }

class _UserProfileState extends State<UserProfile> {
  SingingGender _character = SingingGender.Male;

  @override
  Widget build(BuildContext context) {
    double tileHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: Icon(Icons.edit),
          backgroundColor: Colors.green,
        ),
        body: SafeArea(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Name(as on PAN Card)',
                  style: TextStyle(
                    fontSize: tileHeight/40,
                    color: Colors.black87,
                  ),
                  ),
                  SizedBox(height: tileHeight/80,),
                  Text('Ganesh',
                    style: TextStyle(
                      fontSize: tileHeight/55,
                      color: Colors.black45,
                    ),
                  ),
                  Divider(color: Colors.black45,),
                  SizedBox(height: tileHeight/40,),
                  Text('Date of Birth',
                    style: TextStyle(
                      fontSize: tileHeight/40,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: tileHeight/80,),
                  Text('',
                    style: TextStyle(
                      fontSize: tileHeight/55,
                      color: Colors.black45,
                    ),
                  ),
                  Divider(color: Colors.black45,),
                  SizedBox(height: tileHeight/40,),
                  Text('Mobile Number',
                    style: TextStyle(
                      fontSize: tileHeight/40,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: tileHeight/80,),
                  Text('9876543210',
                    style: TextStyle(
                      fontSize: tileHeight/55,
                      color: Colors.black45,
                    ),
                  ),
                  Divider(color: Colors.black45,),
                  SizedBox(height: tileHeight/40,),
                  Text('PAN Number',
                    style: TextStyle(
                      fontSize: tileHeight/40,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: tileHeight/80,),
                  Text('poiuytr',
                    style: TextStyle(
                      fontSize: tileHeight/55,
                      color: Colors.black45,
                    ),
                  ),
                  Divider(color: Colors.black45,),
                  SizedBox(height: tileHeight/40,),
                  Text('Marital Status',
                    style: TextStyle(
                      fontSize: tileHeight/40,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: tileHeight/80,),
                  Text('',
                    style: TextStyle(
                      fontSize: tileHeight/55,
                      color: Colors.black45,
                    ),
                  ),
                  Divider(color: Colors.black45,),
                  SizedBox(height: tileHeight/40,),
                  Text('Gender',
                    style: TextStyle(
                      fontSize: tileHeight/40,
                      color: Colors.black87,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: tileHeight/40,
                          child: ListTile(
                            title: const Text('Male',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black87,
                              ),),
                            leading: Radio(
                              value: SingingGender.Male,
                              groupValue: _character,
                              onChanged: (SingingGender value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: tileHeight/40,),
                        Container(
                          height: tileHeight/40,
                          child: ListTile(
                            title: const Text('Female',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black87,
                              ),),
                            leading: Radio(
                              value: SingingGender.female,
                              groupValue: _character,
                              onChanged: (SingingGender value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                          ),
                        ),
                  SizedBox(height: tileHeight/80,),
                  SizedBox(height: tileHeight/40,),
                  Text('Unique Client Code',
                    style: TextStyle(
                      fontSize: tileHeight/40,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: tileHeight/80,),
                  Text('9876541230',
                    style: TextStyle(
                      fontSize: tileHeight/55,
                      color: Colors.black45,
                    ),
                  ),
                  Divider(color: Colors.black45,),
                  SizedBox(height: tileHeight/40,),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
