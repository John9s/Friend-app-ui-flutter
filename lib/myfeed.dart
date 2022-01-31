import 'package:flutter/material.dart';
import 'package:friend_app_ui/custombutton.dart';

class MyFeed extends StatelessWidget {
  final Color customBlue = Color(0xFF1A237E);
  final Color customRed = Color(0xFFDD2C00);
  final Color customGrey = (Colors.grey[400] as Color);
  final Color customWhite = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: customWhite,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(18, 20, 18, 20),
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            width: double.infinity,
            height: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: customWhite,
                border: Border.all(
                    width: 1.0, color: Colors.grey.withOpacity(0.5))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Icon(
                    Icons.search,
                    color: customRed.withOpacity(0.5),
                  ),
                  Text(
                    ' Find a restaurant...',
                    style: TextStyle(color: customGrey),
                  ),
                ]),
                Icon(Icons.mic_outlined, color: customGrey),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            padding: EdgeInsets.fromLTRB(18, 0, 18, 20),
            width: double.infinity,
            height: 450.0,
            child: Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/woman.jpeg',
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
                            color: customBlue,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Rated a new restaurant',
                        style: TextStyle(
                            color: customGrey,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.access_time,
                            color: customGrey,
                            size: 15.0,
                          ),
                          Text(' Posted 2 hours ago',
                              style:
                                  TextStyle(color: customGrey, fontSize: 11.0))
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                            color: customRed.withOpacity(0.2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0))),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('5',
                                style: TextStyle(
                                    color: customRed,
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w500)),
                            Icon(
                              Icons.star,
                              color: customRed,
                              size: 12.0,
                            ),
                          ],
                        )),
                      ),
                      SizedBox(height: 5.0),
                      Text('Outstanding!',
                          style: TextStyle(
                              color: customRed,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Stack(
                children: [
                  Container(
                    height: 300.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          /* BoxShadow(
                            color: customRed.withOpacity(0.3), spreadRadius: 4.0, blurRadius: 10.0) */
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/front.png'),
                            fit: BoxFit.fill)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 190.0, left: 20.0),
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                  
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: customWhite,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'Cafe Raybin Wolf ',
                                style: TextStyle(
                                    color: customBlue,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600)),
                            WidgetSpan(
                                child: Icon(
                              Icons.arrow_drop_down,
                              color: customRed,
                              size: 18.0,
                            ))
                          ])),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Portugal Street View',
                            style: TextStyle(
                                color: customGrey,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.favorite_border_rounded,
                      color: customRed.withOpacity(0.6),
                      size: 18.0,
                    )),
                    TextSpan(
                      text: '  251 loves',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ])),
                  SizedBox(
                    width: 30.0,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.mode_comment_outlined,
                      color: Colors.grey.withOpacity(0.5),
                      size: 15.0,
                    )),
                    TextSpan(
                        text: '  450 Comments',
                        style: TextStyle(
                            color: customGrey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400)),
                  ])),
                  SizedBox(width: 40.0),
                  Icon(
                    Icons.more_vert,
                    color: Colors.grey.withOpacity(0.5),
                  )
                ],
              ),
            ]),
          ),
          Container(
              color: customGrey.withOpacity(0.1),
              width: double.infinity,
              height: 300.0,
              padding: EdgeInsets.only(left: 18, top: 20.0),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('RestoFriends',
                          style: TextStyle(
                              color: customBlue,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600)),
                      Text('View all',
                          style: TextStyle(
                              color: customRed,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 150,
                        height: 200,
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          color: customWhite,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.control_point_outlined,
                                    color: customGrey, size: 15),
                              ],
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(40.0),
                                child: Image.asset(
                                  'assets/manProfile2.jpeg',
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.fill,
                                )),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Micheal Korwin',
                              style: TextStyle(
                                  color: customBlue,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Top Tollets',
                              style: TextStyle(
                                  color: customGrey,
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomButton(),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        width: 150,
                        height: 200,
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          color: customWhite,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.control_point_outlined,
                                    color: customGrey, size: 15),
                              ],
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(40.0),
                                child: Image.asset(
                                  'assets/manProfile3.jpeg',
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.fill,
                                )),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Alberto Conti',
                              style: TextStyle(
                                  color: customBlue,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Top Tollets',
                              style: TextStyle(
                                  color: customGrey,
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomButton(),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        width: 150,
                        height: 200,
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          color: customWhite,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.control_point_outlined,
                                    color: customGrey, size: 15),
                              ],
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(40.0),
                                child: Image.asset(
                                  'assets/manProfile1.jpeg',
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.fill,
                                )),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Alex Iwobi',
                              style: TextStyle(
                                  color: customBlue,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Top Tollets',
                              style: TextStyle(
                                  color: customGrey,
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomButton(),
                            
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ])),
        ],
      ),
    );
  }
}
