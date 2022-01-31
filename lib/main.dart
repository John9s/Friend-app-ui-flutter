import 'package:flutter/material.dart';
import 'package:friend_app_ui/profile.dart';
import 'package:friend_app_ui/restaurantdetails.dart';
import 'myfeed.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: FriendApp()));
}

class FriendApp extends StatefulWidget {
  @override
  _FriendAppState createState() => _FriendAppState();
}

class _FriendAppState extends State<FriendApp> {
  late TabController tabController;
  var customBlue = Color(0xFF1A237E);
  var customRed = Color(0xFFDD2C00);
  var customGrey = Colors.grey[400];
  final Color customWhite = Colors.white;

  @override
  var selectedIndex = 0;

  List children = [
    MyFeed(),
    NotificationPage(),
    AddPage(),
    Profile(),
    SearchPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: customWhite,
          selectedItemColor: customRed,
          iconSize: 27.0,
          elevation: 0.0,
          currentIndex: selectedIndex,
          unselectedLabelStyle: TextStyle(color: customGrey),
          unselectedItemColor: customGrey,
          onTap: (currIndex) {
            setState(() {
              selectedIndex = currIndex;
            });
          },
          items: [
            BottomNavigationBarItem(
                label: "Home",
                backgroundColor: customWhite,
                icon: Icon(Icons.home),
                activeIcon: Container(
                  height: 5.0,
                  width: 5.0,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: customRed),
                )),
            BottomNavigationBarItem(
                label: "Notifications",
                backgroundColor: customWhite,
                icon: Icon(Icons.notifications_none_outlined),
                activeIcon: Container(
                  height: 5.0,
                  width: 5.0,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: customRed),
                )),
            BottomNavigationBarItem(
                label: "Add",
                backgroundColor: customWhite,
                icon: Icon(
                  Icons.add_circle_outlined,
                  color: customRed.withOpacity(0.8),
                  size: 50.0,
                ),
                activeIcon: Container(
                  height: 5.0,
                  width: 5.0,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: customRed),
                )),
            BottomNavigationBarItem(
                label: "Profile",
                backgroundColor: customWhite,
                icon: Icon(Icons.person_outline_outlined),
                activeIcon: Container(
                  height: 5.0,
                  width: 5.0,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: customRed),
                )),
            BottomNavigationBarItem(
                label: "Search",
                backgroundColor: customWhite,
                icon: Icon(Icons.search),
                activeIcon: Container(
                  height: 5.0,
                  width: 5.0,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: customRed),
                )),
          ],
        ),
        body: children[selectedIndex]);
  }

}

class NotificationPage extends StatelessWidget {
  const NotificationPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("Notification Page")));
      
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("Search Page")));
      
  }
}

class AddPage extends StatelessWidget {
  const AddPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("Add Page")));
      
  }
}