import 'package:flutter/material.dart';
import 'package:friend_app_ui/restaurantdetails.dart';

class MyRestaurantList extends StatefulWidget {
  @override
  _MyRestaurantListState createState() => _MyRestaurantListState();
}

class _MyRestaurantListState extends State<MyRestaurantList> {
  var customBlue = Color(0xFF1A237E);
  var customRed = Color(0xFFDD2C00);
  var customGrey = Colors.grey[400];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        // height: 500.0,
        width: MediaQuery.of(context).size.width,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                getMenuCard('assets/tropical.png', 'Tropical Fruits',
                    'Greyish day', '20-05-18', '5'),
                getMenuCard('assets/Orange.png', 'Orange fruits', 'Portugesis',
                    '20-05-18', '4')
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                getMenuCard('assets/Springfield.png', 'Springfield',
                    'States Dishes', '20-05-18', '5'),
                getMenuCard('assets/breakfast.png', 'Breakfast Dine',
                    'Costa Rica', '20-05-18', '3')
              ],
            ),
          ],
        ),
      )
    ]);
  }

  Widget getMenuCard(String imgMenu, String titleMenu, String placeMenu,
      String txtDate, String txtRating) {
    return Stack(children: [
      Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RestaurantDetail()));
                  },
                  child: Container(
                    width: 160,
                    height: 190,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 3.0,
                            blurRadius: 1.0,
                            /* offset: Offset(0, 3) */
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 160,
                            height: 90.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(
                                5.0,
                              )),
                              child: Image.asset(
                                imgMenu,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            titleMenu,
                            style: TextStyle(
                                fontFamily: 'Montesserat',
                                fontSize: 15.0,
                                color: customBlue,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                placeMenu,
                                style: TextStyle(
                                    fontFamily: 'Montesserat',
                                    fontSize: 12.0,
                                    color: customGrey,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                txtDate,
                                style: TextStyle(
                                    fontFamily: 'Montesserat',
                                    fontSize: 12.0,
                                    color: customGrey,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 70.0, left: 110.0),
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40.0)),
              color: Colors.white),
          child: Center(
            child:
                Wrap(crossAxisAlignment: WrapCrossAlignment.center, children: [
              Text(txtRating,
                  style: TextStyle(
                      color: customRed,
                      fontSize: 10.0,
                      fontWeight: FontWeight.w600)),
              Icon(
                Icons.star,
                color: customRed,
                size: 11.0,
              )
            ]),
          ),
        ),
      )
    ]);
  }
}
