import 'package:flutter/material.dart';

//import '../tabpages/Rateus.dart';
import '../tabpages/Rateus.dart';
import '../tabpages/home.dart';
import '../tabpages/profile.dart';
import '../tabpages/contact_us.dart';
// import 'package:logistic_app/tabpages/earning.dart';
// import 'package:logistic_app/tabpages/home.dart';
// import 'package:logistic_app/tabpages/profile.dart';
// import 'package:logistic_app/tabpages/rating.dart';
// import 'package:payload/tabpages/earning_tab.dart';
// import 'package:payload/tabpages/home_tab.dart';
// import 'package:payload/tabpages/profile_tab.dart';
// import 'package:payload/tabpages/rating_tab.dart';

class Main_Screen extends StatefulWidget {
  const Main_Screen({super.key});

  @override
  State<Main_Screen> createState() => _Main_ScreenState();
}

class _Main_ScreenState extends State<Main_Screen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedindex = 0;

  onitemclicked(int index) {
    setState(() {
      selectedindex = index;
      tabController!.index = selectedindex;
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children: [
          home_tab(),
          rating_tab(),
          profile_tab(),
          ContactUsPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Rate Us",),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account",),
          BottomNavigationBarItem(icon: Icon(Icons.contact_page), label: "Contact Us",),
        ],
        unselectedItemColor: Colors.white54,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontSize: 16),
        showUnselectedLabels: true,
        currentIndex: selectedindex,
        onTap: onitemclicked,
      ),
    );
  }
}
