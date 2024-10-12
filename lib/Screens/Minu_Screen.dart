import 'package:flutter/material.dart';
import 'package:travel_app/Screens/Flutra_Screen.dart';
import 'package:travel_app/Screens/Tabe_Screen.dart';

class MinuScreen extends StatelessWidget {
  const MinuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
               
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        toolbarHeight: 70,
        title: Center(
            child: Text(
          'دليلك السياحي ',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        )),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return TabeScreen();
              }));
            },
            child: ListTile(
              trailing: Icon(
                Icons.work_sharp,
                color: Colors.green,
              ),
              title: Text(
                '               الرحلات',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          InkWell(
            onTap: () {

              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return FlutraScreen();
              }));
            },
            child: ListTile(
              trailing: Icon(
                Icons.medication_liquid_rounded,
                color: Colors.green,
              ),
              title: Text(
                '               الفلترة ',
                style: TextStyle(fontSize: 30),
              ),
            ),
          )
        ],
      ),
    );
  }
}
