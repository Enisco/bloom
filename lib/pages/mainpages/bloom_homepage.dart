import 'package:flutter/material.dart';
import 'faqs_page.dart';
import 'about_us.dart';
import 'team_page.dart';
import 'dashboard.dart';

int _selectedIndex = 0;
const List<Widget> appPages = <Widget>[
  Dashboard(),
  FAQs_page(),
  AboutUsPage(),
  TeamDetailsPage(),
];

class BloomHomepage extends StatefulWidget {
  const BloomHomepage({Key? key}) : super(key: key);

  @override
  _BloomHomepageState createState() => _BloomHomepageState();
}

class _BloomHomepageState extends State<BloomHomepage> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //----------------------------------------------------------------------------------------

    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: IconThemeData(
            color: Colors.black54,
            size: size.width / 10,
          ),
          selectedItemColor: Colors.black54,
          selectedLabelStyle: TextStyle(
              fontSize: size.width / 25,
              fontFamily: "SourceCodePro",
              fontWeight: FontWeight.w800),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          iconSize: size.width / 15,
          selectedFontSize: size.width / 10,
          unselectedFontSize: size.width / 30,
          unselectedItemColor: Colors.black26,
          unselectedLabelStyle:
              TextStyle(fontSize: size.width / 30, color: Colors.black45),
          //************************************************************************* */

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.question_answer_outlined,
              ),
              label: 'FAQs',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.people_alt,
              ),
              label: 'About',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Settings',
            ),
          ],
        ),
        //----------------------------------------------------------------------------------------

        body: IndexedStack(
          index: _selectedIndex,
          children: appPages,
        ));
  }
}