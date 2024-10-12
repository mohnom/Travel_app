import 'package:flutter/material.dart';
import 'package:travel_app/Screens/Minu_Screen.dart';
import 'package:travel_app/Widget/Homebody.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: MinuScreen(),
      ),
      appBar: AppBar(
        title:Center(child: Text('التصنيفات ',style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.green,
        iconTheme: IconThemeData(color: Colors.white),
        
        
      ),
      body: Homebody(),
    );
  }
}
