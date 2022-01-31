import 'package:flutter/material.dart';
import 'myfeed.dart';
import 'myrestaurants.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin  {

  late TabController tabController;
  var customBlue = Color(0xFF1A237E);
  var customRed = Color(0xFFDD2C00);
  var customGrey = Colors.grey[400];
  final Color customWhite = Colors.white;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.keyboard_arrow_left_outlined),
                      color: customGrey,
                      onPressed: () {},
                    ),
                    Text('Profile',
                        style: TextStyle(
                            color: customGrey,
                            fontSize: 18.0,
                            fontFamily: 'Montesserat',
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              IconButton(
                  icon: Icon(Icons.edit), color: customGrey, onPressed: () {}),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Stack(children: [
            Column(
              children: [
                Positioned(
                  left: MediaQuery.of(context).size.width / 2,
                  top: 60.0,
                  child: Container(
                      width: 95,
                      height: 90,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/woman2.jpeg'),
                              fit: BoxFit.fill))),
                ),
                SizedBox(
                  height: 15.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyFeed()));
                  },
                  child: Text(
                    'Chloe Hannouille',
                    style: TextStyle(
                        fontFamily: 'Montesserat',
                        fontSize: 28.0,
                        color: customBlue,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                      child: Icon(
                    Icons.location_on_outlined,
                    color: customGrey,
                    size: 20.0,
                  )),
                  TextSpan(
                      text: 'Dhaka-Bangladesh',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Montesserat',
                          color: customGrey,
                          fontWeight: FontWeight.w600))
                ])),
                SizedBox(
                  height: 60.0,
                ),
                Container(
                  height: 80.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.2, color: Colors.grey),
                      color: Colors.grey.withOpacity(0.04)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text('121k',
                                style: TextStyle(
                                    fontFamily: 'Montesserat',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    color: customRed)),
                            SizedBox(height: 10.0),
                            Text('Followers',
                                style: TextStyle(
                                    fontFamily: 'Montesserat',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                    color: customGrey))
                          ],
                        ),
                        Column(
                          children: [
                            Text('152',
                                style: TextStyle(
                                    fontFamily: 'Montesserat',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    color: customRed)),
                            SizedBox(height: 10.0),
                            Text('Following',
                                style: TextStyle(
                                    fontFamily: 'Montesserat',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                    color: customGrey))
                          ],
                        ),
                        Column(
                          children: [
                            Text('455',
                                style: TextStyle(
                                    fontFamily: 'Montesserat',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    color: customRed)),
                            SizedBox(height: 10.0),
                            Text('Taste Maker',
                                style: TextStyle(
                                    fontFamily: 'Montesserat',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                    color: customGrey))
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 60.0, left: MediaQuery.of(context).size.width / 2 + 10),
              child: FloatingActionButton(
                child: Icon(
                  Icons.lunch_dining_outlined,
                  color: customRed,
                  size: 17.0,
                ),
                elevation: 0.0,
                backgroundColor: Colors.white,
                mini: true,
                onPressed: () {},
              ),
            )
          ]),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.0),
          child: TabBar(
            controller: tabController,
            unselectedLabelColor: customGrey,
            labelColor: customBlue,
            indicatorColor: Colors.transparent,
            isScrollable: true,
            tabs: [
              Text(
                'My Restaurants',
                style: TextStyle(
                    fontFamily: 'Montesserat',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'My Wishlist',
                style: TextStyle(
                    fontFamily: 'Montesserat',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 20.0),
          height: 500.0,
          // color: Colors.green,
          width: MediaQuery.of(context).size.width,
          child: TabBarView(
            controller: tabController,
            children: [MyRestaurantList(), MyRestaurantList()],
          ),
        ),
      ],
    );
  }
}
