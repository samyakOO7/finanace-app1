import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  String dropdownValue = 'Male';

  @override
  Widget build(BuildContext context) {
    double tileHeight = MediaQuery.of(context).size.height;
    return Scaffold(
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
                Text(
                  'Ganesh',
                  style: TextStyle(
                    fontSize: tileHeight / 55,
                    color: Colors.black45,
                  ),
                ),
                Divider(
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
                Text(
                  '',
                  style: TextStyle(
                    fontSize: tileHeight / 55,
                    color: Colors.black45,
                  ),
                ),
                Divider(
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
                Text(
                  '9876543210',
                  style: TextStyle(
                    fontSize: tileHeight / 55,
                    color: Colors.black45,
                  ),
                ),
                Divider(
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
                Text(
                  'poiuytr',
                  style: TextStyle(
                    fontSize: tileHeight / 55,
                    color: Colors.black45,
                  ),
                ),
                Divider(
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
                Text(
                  '',
                  style: TextStyle(
                    fontSize: tileHeight / 55,
                    color: Colors.black45,
                  ),
                ),
                Divider(
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
                DropdownButton<String>(
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
                  '9876541230',
                  style: TextStyle(
                    fontSize: tileHeight / 55,
                    color: Colors.black45,
                  ),
                ),
                Divider(
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
    );
  }
}
