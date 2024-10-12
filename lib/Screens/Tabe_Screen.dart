import 'package:flutter/material.dart';
import 'package:travel_app/Models/Trips_data_model.dart';
import 'package:travel_app/Screens/Foverite_Screen.dart';
import 'package:travel_app/Screens/Minu_Screen.dart';
import 'package:travel_app/Widget/Homebody.dart';

class TabeScreen extends StatefulWidget {
  TabeScreen({super.key});
  
  @override
  State<TabeScreen> createState() => _TabeScreenState();
}

class _TabeScreenState extends State<TabeScreen> {
  void slectscrren(int index) {
    setState(() {
      slectscreenindex = index;
    });
  }

  final List<Map> _Screens = [
    {'Screen': Homebody(), 'Title': "تصنيفات الرحلات "},
    {'Screen': FoveriteScreen(), 'Title': "الرحلات المفضلة"}
  ];
  int slectscreenindex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: Drawer(
            child: MinuScreen(),
          ),
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            title: Text(
              _Screens[slectscreenindex]['Title'],
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.green,
          ),
          body: _Screens[slectscreenindex]['Screen'],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: slectscreenindex,
              onTap: slectscrren,
              backgroundColor: Colors.green,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.white,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.dashboard),
                    label: "التصنيفات",
                    backgroundColor: Colors.white),
                BottomNavigationBarItem(
                    icon: Icon(Icons.star),
                    label: "المفضلة ",
                    backgroundColor: Colors.white),
              ]),
        ));
  }
}
