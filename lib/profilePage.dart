import 'package:flutter/material.dart';
import 'components/dual_button_tiles.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double tileWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
               Expanded(
                 child: Align(
                   alignment: Alignment.topCenter,
                   child:  Column(
                     children: <Widget>[
                       Row(
                         children: <Widget>[
                           SizedBox(
                             width: MediaQuery.of(context).size.width / 1.5,
                             child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: <Widget>[
                                   Padding(
                                     padding: EdgeInsets.only(
                                       left: 16.0,
                                       bottom: 4.0,
                                     ),
                                     child: Text(
                                       'Name',
                                       style: Theme.of(context)
                                           .textTheme
                                           .subtitle1
                                           .copyWith(
                                         fontSize: 22.0,
                                       ),
                                       maxLines: 1,
                                       overflow: TextOverflow.ellipsis,
                                     ),
                                   ),
                                   Padding(
                                     padding: EdgeInsets.only(
                                       left: 16.0,
                                       bottom: 2.0,
                                     ),
                                     child: Text(
                                       'email\nphno\npanno',
                                       style:
                                       Theme.of(context).textTheme.subtitle2.copyWith(
                                         fontSize: 12,
                                         color: Colors.black54,
                                       ),
                                     ),
                                   )
                                 ]
                             ),
                           ),
                           Hero(
                             tag: 'profile',
                             child: CircleAvatar(
                               radius: MediaQuery.of(context).size.width / 12,
                               backgroundColor: Colors.amber,
                               foregroundColor: Colors.lightBlueAccent,
                             ),
                           ),
                         ],
                       ),
                       Padding(
                         padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 15.0),
                         child: Material(
                           color: Colors.greenAccent,
                           borderRadius: BorderRadius.circular(5.0),
                           elevation: 5.0,
                           child: MaterialButton(
                             onPressed: (){},
                             minWidth: tileWidth,
                             height: 42.0,
                             child: Text(
                               'Complete Account Setup',
                               style: TextStyle(color: Colors.white),
                             ),
                           ),
                         ),
                       ),
                       SizedBox(height: 10.0,),
                       ProfileButtons(title: 'Personal Details', onPress: (){}, width: tileWidth, icon: Icons.person_outline),
                       ProfileButtons(title: 'Track External Funds', onPress: (){}, width: tileWidth, icon: Icons.compare_arrows),
                       ProfileButtons(title: "Notifications", onPress: (){}, width: tileWidth, icon: Icons.notifications_none),
                       ProfileButtons(title: 'My Orders',onPress: (){},width: tileWidth,icon: Icons.library_books),
                       ProfileButtons(title: 'SIP & Reports', onPress: (){}, width: tileWidth, icon: Icons.calendar_today),
                       ProfileButtons(title: 'Invite & Earn Rewards', onPress: (){}, width: tileWidth, icon: Icons.card_giftcard),
                       ProfileButtons(title: 'Help & Support', onPress: (){}, width: tileWidth, icon: Icons.call),
                       ProfileButtons(title: 'Pricing', onPress: (){}, width: tileWidth, icon: Icons.check_circle_outline),
                       ProfileButtons(title: 'Settings', onPress: (){}, width: tileWidth, icon: Icons.settings)
                     ],
                   ),
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
