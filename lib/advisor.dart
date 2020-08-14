import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:responsive_text_field/responsive_text_field.dart';

class Advisor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {},
        ),
        centerTitle: true,
        backgroundColor: Color(0xff63E2E0),
        title: Text(
          'YOUR ADVISOR',
          style: TextStyle(
            fontSize: 28.0,
            color: Color(0xff373D3F),
          ),
        ),
      ),
      body: AdvisorBody(),
    );
  }
}

class AdvisorBody extends StatefulWidget {
  @override
  _AdvisorBodyState createState() => _AdvisorBodyState();
}

class _AdvisorBodyState extends State<AdvisorBody> {
  Widget MyCard() {
    return Card(
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 12),
            child: Text(
              'Advisor',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22.0,
                color: Color(0xff373D3F),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 133, top: 5),
            child: Text(
              'Mr. ABC',
              style: TextStyle(
                fontSize: 24.0,
                color: Color(0xff373D3F),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90, top: 15),
            child: Text(
              'Advisor Code : 09XDF',
              style: TextStyle(
                fontSize: 19.0,
                color: Color(0xff373D3F),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget MyCard2() {
    return Card(
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 67, top: 16),
            child: Text(
              'Contact your Advisor',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22.0,
                color: Color(0xff373D3F),
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 9),
            child: Row(
              children:<Widget> [
                Icon(
                  Icons.phone,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('+033-2564 6777',
                    style: TextStyle(
                      color: Color(0xff373D3F),
                      fontSize: 17,
                    ),),
                ),
              ],

            ),
          ),
          SizedBox(
            height: 13,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 9),
            child: Row(
              children:<Widget> [
                Icon(
                  Icons.mail,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('xyz@gmail.com',
                    style: TextStyle(
                      fontSize: 17.5,
                      color: Color(0xff373D3F),
                    ),),
                ),
              ],

            ),
          ),

        ],
      ),
    );
  }

  Widget Star() {
    return RatingBar(
      initialRating: 0,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Center(
                        child: Container(
                          height: h * 0.20,
                          width: w * 0.9,
                          color: Colors.white,
                          child: MyCard(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Center(
                        child: Container(
                          height: h * 0.20,
                          width: w * 0.9,
                          color: Colors.white,
                          child: MyCard2(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Star(),
                    SizedBox(
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4,left: 11),
                      child: Container(
                        height: h * 0.1,
                        width: w * 0.6,
                        child: ResponsiveTextField(
                          availableWidth: MediaQuery.of(context).size.width,
                          minLines: 1,
                          maxLines: 5,
                          style: TextStyle(fontSize: 16),
                          decoration: InputDecoration(
                            hintText: 'Give your feedback (Optional)',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Center(
                        child: Container(
                          height: h * 0.23,
                          width: w * 0.9,
                          color: Colors.white,
                          child: Card(
                            color: Colors.white,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children:<Widget> [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8, top: 12),
                                  child: Text(
                                    'Have a question for your Advisor?',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.0,
                                      color: Color(0xff373D3F),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: h * 0.1,
                                  width: w * 0.6,
                                  child: ResponsiveTextField(
                                    availableWidth: MediaQuery.of(context).size.width,
                                    minLines: 1,
                                    maxLines: 5,
                                    style: TextStyle(fontSize: 16),
                                    decoration: InputDecoration(
                                      hintText: 'Type your question',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.5,
                                ),

                                SizedBox(
                                  height: 45,
                                  width: 345,
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                                    ),
                                    onPressed: (){},
                                    color: Color(0xff63E2E0),
                                    child: Text('Submit',
                                      style: TextStyle(
                                        color: Color(0xff373D3F),
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                )

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
