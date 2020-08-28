import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  String dropdownValue;
  String userName;
  String userPan;
  String userStatus;
  String userMobile;
  String userDob;
  String userCode;
  bool isEditing = false;

  void getUserData(){
    //function to get user data
    dropdownValue = 'Male';
    userName = 'Ganesh';
    userPan = 'po87uin';
    userCode = '3218526547';
    userDob = '';
    userStatus = 'Single';
    userMobile = '9564832178';

  }
  void switchState(){
    if(isEditing){
      isEditing = false;
    }
    else{
      isEditing = true;
    }
  }
  void updateUserData(){
    //function to update the data of user to sync database
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserData();
  }


  @override
  Widget build(BuildContext context) {
    double tileHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(isEditing){
            updateUserData();
          }
          setState(() {
            switchState();
          });
          // Add your onPressed code here!
        },
        child: isEditing?Icon(Icons.save):Icon(Icons.edit),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Name(as on PAN Card)',
                    style: TextStyle(
                      fontSize: tileHeight / 40,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    height: tileHeight / 80,
                  ),
                  isEditing?TextFormField():Text(
                    '$userName',
                    style: TextStyle(
                      fontSize: tileHeight / 55,
                      color: Colors.black45,
                    ),
                  ),
                  isEditing?SizedBox():Divider(
                    color: Colors.black45,
                  ),
                  SizedBox(
                    height: tileHeight / 40,
                  ),
                  Text(
                    'Date of Birth',
                    style: TextStyle(
                      fontSize: tileHeight / 40,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    height: tileHeight / 80,
                  ),
                  isEditing?TextFormField():Text(
                    '$userDob',
                    style: TextStyle(
                      fontSize: tileHeight / 55,
                      color: Colors.black45,
                    ),
                  ),
                  isEditing?SizedBox():Divider(
                    color: Colors.black45,
                  ),
                  SizedBox(
                    height: tileHeight / 40,
                  ),
                  Text(
                    'Mobile Number',
                    style: TextStyle(
                      fontSize: tileHeight / 40,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    height: tileHeight / 80,
                  ),
                  isEditing?TextFormField():Text(
                    '$userMobile',
                    style: TextStyle(
                      fontSize: tileHeight / 55,
                      color: Colors.black45,
                    ),
                  ),
                  isEditing?SizedBox():Divider(
                    color: Colors.black45,
                  ),
                  SizedBox(
                    height: tileHeight / 40,
                  ),
                  Text(
                    'PAN Number',
                    style: TextStyle(
                      fontSize: tileHeight / 40,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    height: tileHeight / 80,
                  ),
                  isEditing?TextFormField():Text(
                    '$userPan',
                    style: TextStyle(
                      fontSize: tileHeight / 55,
                      color: Colors.black45,
                    ),
                  ),
                  isEditing?SizedBox():Divider(
                    color: Colors.black45,
                  ),
                  SizedBox(
                    height: tileHeight / 40,
                  ),
                  Text(
                    'Marital Status',
                    style: TextStyle(
                      fontSize: tileHeight / 40,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    height: tileHeight / 80,
                  ),
                  isEditing?TextFormField():Text(
                    '$userStatus',
                    style: TextStyle(
                      fontSize: tileHeight / 55,
                      color: Colors.black45,
                    ),
                  ),
                  isEditing?SizedBox():Divider(
                    color: Colors.black45,
                  ),
                  SizedBox(
                    height: tileHeight / 40,
                  ),
                  Text(
                    'Gender',
                    style: TextStyle(
                      fontSize: tileHeight / 40,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    height: tileHeight / 80,
                  ),
                  isEditing?DropdownButton<String>(
                    value: dropdownValue,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: tileHeight/40,
                    elevation: 16,
                    style: TextStyle(
                        color: Colors.black45, fontSize: tileHeight / 55),
                    underline: Container(
                      height: 2,
                      color: Colors.black45,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>['Male', 'Female']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ):Text(
                    '$dropdownValue',
                    style: TextStyle(
                      fontSize: tileHeight / 55,
                      color: Colors.black45,
                    ),
                  ),
                  isEditing?SizedBox():Divider(
                    color: Colors.black45,
                  ),
                  SizedBox(
                    height: tileHeight / 40,
                  ),
                  Text(
                    'Unique Client Code',
                    style: TextStyle(
                      fontSize: tileHeight / 40,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    height: tileHeight / 80,
                  ),
                  Text(
                    '$userCode',
                    style: TextStyle(
                      fontSize: tileHeight / 55,
                      color: Colors.black45,
                    ),
                  ),
                  isEditing?SizedBox():Divider(
                    color: Colors.black45,
                  ),
                  SizedBox(
                    height: tileHeight / 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
