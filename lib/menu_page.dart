import 'package:flutter/material.dart';
import 'Income_Expenses/NewIncomePage.dart';
import 'Learning/LearningHomePage.dart';
import 'components/dual_button_tiles.dart';
import 'package:finance_app/UserProfile.dart';
import 'package:finance_app/Refer.dart';
import 'package:finance_app/MyGoals/GoalsHomePage.dart';
import 'advisor.dart';
import 'contact_us.dart';
import 'package:finance_app/Investments/InvestmentHomePage.dart';
import 'Insurance/InsuranceHomePage.dart';

class menuPage extends StatefulWidget {
  String currentUserID;
  menuPage({@required this.currentUserID});
  @override
  _menuPageState createState() => _menuPageState(currentUserID: currentUserID);
}

class _menuPageState extends State<menuPage> {
  String currentUserID;
  _menuPageState({@required this.currentUserID});
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
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                child: Text(
                  '$userName',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(fontSize: 20.0, color: Color(0xFF373D3F)),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            ProfileButtons(
                title: 'Profile',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => UserProfile(currentUserID: currentUserID,)));
                },
                width: tileWidth,
                icon: Icons.person_outline),
            ProfileButtons(
                title: 'Holdings',
                onPress: () {},
                width: tileWidth,
                icon: Icons.business_center),
            ProfileButtons(
                title: 'Investment',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              InvestmentHomePage(currentUserID: currentUserID,)));
                },
                width: tileWidth,
                icon: Icons.attach_money),
            ProfileButtons(
                title: 'Insurance',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              InsuranceHomePage(currentUserID: currentUserID,)));
                },
                width: tileWidth,
                icon: Icons.home),
            ProfileButtons(
                title: 'Statements',
                onPress: () {},
                width: tileWidth,
                icon: Icons.receipt),
            ProfileButtons(
                title: 'Learning',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              LearningHomePage(currentUserID: currentUserID,)));
                },
                width: tileWidth,
                icon: Icons.trending_up),
            ProfileButtons(
                title: 'Income and Expense',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => IncomeHomePage(currentUserID: currentUserID,)));
                },
                width: tileWidth,
                icon: Icons.compare_arrows),
            ProfileButtons(
              title: "Goals",
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => GoalsHomePage(currentUserID: currentUserID,)));
              },
              width: tileWidth,
              icon: Icons.outlined_flag,
            ),
            ProfileButtons(
                title: 'Rewards & Referrals',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => RewardsPages(currentUserID: currentUserID,)));
                },
                width: tileWidth,
                icon: Icons.card_giftcard),
            ProfileButtons(
                title: 'Advisor',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Advisor(currentUserID: currentUserID,)));
                },
                width: tileWidth,
                icon: Icons.assistant),
            ProfileButtons(
                title: 'About Us',
                onPress: () {},
                width: tileWidth,
                icon: Icons.business),
            ProfileButtons(
                title: 'Help & Support',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Contact_us(currentUserID: currentUserID,)));
                },
                width: tileWidth,
                icon: Icons.call),
          ],
        ),
      )),
    );
  }
}
