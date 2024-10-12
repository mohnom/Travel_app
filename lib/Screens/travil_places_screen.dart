import 'package:flutter/material.dart';
import 'package:travel_app/Models/Categories_data_Model.dart';
import 'package:travel_app/Models/Trips_data_model.dart';

import 'package:travel_app/Widget/Trip_Widget.dart';
import 'package:travel_app/app_data.dart';

class TravilPlacesScreen extends StatelessWidget {
  TravilPlacesScreen({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    final String catagryid = category.id;
    final flutterTrip = Trips_data.where((trip) {
      return trip.categories.contains(catagryid);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Center(
            child: Text(
          category.title,
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
          itemCount: flutterTrip.length,
          itemBuilder: (context, index) {
            return TripWidget(trips: flutterTrip[index]);
          }),
      
    );
  }
}
