import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:friend_app_ui/myfeed.dart';

class RestaurantDetail extends StatelessWidget {
  var customBlue = Color(0xFF1A237E);
  var customRed = Color(0xFFDD2C00);
  var customGrey = Colors.grey[400];
  var customwhite = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customwhite,
      body: ListView(
        padding: EdgeInsets.only(bottom: 40.0),
        children: [
          Stack(
            children: [
              Container(
                height: 300.0,
                width: double.infinity,
                child: Image.asset(
                  'assets/header.png',
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      color: customwhite,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Icon(Icons.bookmark_outline, color: customwhite),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'X Sky Lounge',
                      style: TextStyle(
                          color: customBlue,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          color: customRed),
                      child: Center(
                        child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Text('5',
                                  style: TextStyle(
                                      color: customwhite,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w600)),
                              Icon(
                                Icons.star,
                                color: customwhite,
                                size: 11.0,
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text('Hill Road, West Baston, Centaral Japan',
                    style: TextStyle(
                      color: customGrey,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                    )),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Text('Closed in 45 minutes',
                        style: TextStyle(
                            color: customRed,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline)),
                    Text(' 11AM to 12Midnight (Today)',
                        style: TextStyle(
                          color: customGrey,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('Casual Dining - Chinese, Pizza',
                    style: TextStyle(
                      color: customGrey,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                    )),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Container(
                      height: 50.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          color: customwhite,
                          border: Border.all(color: customRed, width: 2.0),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Center(
                        child: Text('Directions',
                            style: TextStyle(color: customRed, fontSize: 13.0)),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      height: 50.0,
                      width: 130.0,
                      decoration: BoxDecoration(
                          color: customwhite,
                          border: Border.all(color: customRed, width: 2.0),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Center(
                        child: Text('04725687515',
                            style: TextStyle(color: customRed, fontSize: 13.0)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 18.0, bottom: 30.0),
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.asset(
                  'assets/review1.png',
                  fit: BoxFit.fill,
                ),
                SizedBox(width: 15.0),
                Image.asset(
                  'assets/review3.png',
                  fit: BoxFit.fill,
                ),
                SizedBox(width: 15.0),
                Image.asset(
                  'assets/review2.png',
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your rating!',
                  style: TextStyle(
                      color: customBlue,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    rateBox("1"),
                    SizedBox(
                      width: 15.0,
                    ),
                    rateBox("2"),
                    SizedBox(
                      width: 15.0,
                    ),
                    rateBox("3"),
                    SizedBox(
                      width: 15.0,
                    ),
                    rateBox("4"),
                    SizedBox(
                      width: 15.0,
                    ),
                    rateBox("5"),
                    SizedBox(
                      width: 15.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'We would love to hear more about your experience!',
                  style: TextStyle(color: customGrey, fontSize: 14.0),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Add Your Review',
                  style: TextStyle(
                      color: customRed,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey.withOpacity(0.5),
                    width: 1.0,
                    style: BorderStyle.solid)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.0, right: 18.0),
            child: Column(
              children: [
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Reviews',
                      style: TextStyle(
                          color: customBlue,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyFeed()));
                      },
                      child: Text(
                        'Read all (400)',
                        style: TextStyle(
                            color: customRed,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/manProfile1.jpeg',
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Chloe Hannouille',
                          style: TextStyle(
                              color: customRed,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          '45 Reviews, 353 Followers',
                          style: TextStyle(
                              color: customGrey,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 35.0,
                    ),
                    rateBox("5", bg: customRed, textColor: customwhite)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget rateBox(String num,
      {Color bg: Colors.transparent,
      Color textColor: const Color(0xFFDD2C00)}) {
    return Container(
      height: 40.0,
      width: 50.0,
      decoration: BoxDecoration(
          color: bg,
          border: Border.all(color: customRed, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Center(
        child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              TextSpan(
                  text: num,
                  style: TextStyle(color: textColor, fontSize: 13.0)),
              WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3.0),
                    child: Icon(
                      Icons.star,
                      color: textColor,
                      size: 13.0,
                    ),
                  ))
            ])),
      ),
    );
  }
}
