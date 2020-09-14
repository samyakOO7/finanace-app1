import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:responsive_text_field/responsive_text_field.dart';

class AdvisorPage extends StatefulWidget {
  final String currentUserID;
  AdvisorPage({@required this.currentUserID});
  @override
  _AdvisorPageState createState() =>
      _AdvisorPageState(currentUserID: currentUserID);
}

class _AdvisorPageState extends State<AdvisorPage> {
  final String currentUserID;
  _AdvisorPageState({@required this.currentUserID});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xff373D3F),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff63E2E0),
        title: Text(
          'YOUR ADVISOR',
          style: TextStyle(
            color: Color(0xff373D3F),
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Advisor',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Color(0xff373D3F),
                      ),
                    ),
                    Text(
                      'Mr. ABC',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff373D3F),
                      ),
                    ),
                    Text(
                      'Advisor Code : 09XDF',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff373D3F),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Text(
                      'Contact your Advisor',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0,
                        color: Color(0xff373D3F),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            '+033-2564 6777',
                            style: TextStyle(
                              color: Color(0xff373D3F),
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.mail,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'xyz@gmail.com',
                            style: TextStyle(
                              fontSize: 17.5,
                              color: Color(0xff373D3F),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    RatingBar(
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
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: height < 640 ? height * 0.13 : height * 0.1,
                          width: width * 0.6,
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
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            icon: Icon(Icons.arrow_forward),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Container(
                      height: height < 640 ? height * 0.3 : height * 0.23,
                      width: width * 0.9,
                      color: Colors.white,
                      child: Card(
                        color: Colors.white,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: <Widget>[
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
                              height: height * 0.1,
                              width: width * 0.6,
                              child: ResponsiveTextField(
                                textAlign: TextAlign.center,
                                availableWidth:
                                    MediaQuery.of(context).size.width,
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
                              height: height * 0.05,
                              width: width * 0.8,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10))),
                                onPressed: () {},
                                color: Color(0xff63E2E0),
                                child: Text(
                                  'Submit',
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
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
