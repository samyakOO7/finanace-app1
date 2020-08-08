import 'package:flutter/material.dart';
import 'components/dual_button_tiles.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String userName = 'Akhilesh';
  @override
  Widget build(BuildContext context) {
    double tileWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 16
                ),
                child: Text(
                  '$userName',
                  style:
                      Theme.of(context).textTheme.subtitle1.copyWith(
                            fontSize: 20.0,
                        color: Color(0xFF373D3F)
                          ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            ProfileButtons(
                title: 'Profile',
                onPress: () {},
                width: tileWidth,
                icon: Icons.person_outline),
            ProfileButtons(
                title: 'Holdings',
                onPress: () {},
                width: tileWidth,
                icon: Icons.business_center),
            ProfileButtons(
                title: 'Investment',
                onPress: () {},
                width: tileWidth,
                icon: Icons.attach_money),
            ProfileButtons(
                title: 'Insurance',
                onPress: () {},
                width: tileWidth,
                icon: Icons.home),
            ProfileButtons(
                title: 'Statements',
                onPress: () {},
                width: tileWidth,
                icon: Icons.receipt),
            ProfileButtons(
                title: 'Learning',
                onPress: () {},
                width: tileWidth,
                icon: Icons.trending_up),
            ProfileButtons(
                title: 'Income and Expense',
                onPress: () {},
                width: tileWidth,
                icon: Icons.compare_arrows),
            ProfileButtons(
                title: "Goals",
                onPress: () {},
                width: tileWidth,
                icon: Icons.notification_important),
            ProfileButtons(
                title: 'Rewards & Referrals',
                onPress: () {},
                width: tileWidth,
                icon: Icons.card_giftcard),
            ProfileButtons(
                title: 'About Us',
                onPress: () {},
                width: tileWidth,
                icon: Icons.business),
            ProfileButtons(
                title: 'Help & Support',
                onPress: () {},
                width: tileWidth,
                icon: Icons.call),
          ],
        ),
      )),
    );
  }
}
