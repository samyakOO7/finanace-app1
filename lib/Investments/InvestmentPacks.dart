import 'package:flutter/material.dart';

import 'BodyTabs.dart';

class InvestmentPack extends StatefulWidget {
  @override
  _InvestmentPackState createState() => _InvestmentPackState();
}

class _InvestmentPackState extends State<InvestmentPack> {
  int current = 0;
  final List<Widget> bodyTabs = [Tabs(), Tabs(), Tabs(), Tabs(), Tabs()];
  void tapped(int index) {
    setState(() {
      current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff63E2E0),
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white,
        currentIndex: current,
        onTap: tapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            title: Text('1m'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            title: Text('3m'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            title: Text('1y'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            title: Text('5y'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            title: Text('max'),
          ),
        ],
      ),
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
          'INVESTMENT PACKS',
          style: TextStyle(color: Color(0xff373D3F)),
        ),
      ),
      body: bodyTabs[current],
    );
  }
}
