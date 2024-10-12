import 'package:flutter/material.dart';
import 'package:travel_app/Models/Trips_data_model.dart';
import 'package:travel_app/Screens/Discrbion_screen.dart';
import 'package:travel_app/Widget/Trip_Widget.dart';

class FoveriteScreen extends StatelessWidget {
  const FoveriteScreen({super.key});
  
  get flutterTrip => null;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       ;
      },
      child: Column(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 7,
            margin: EdgeInsets.all(10),
            child: Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child: Image.network(
                              'https://images.unsplash.com/photo-1601024445121-e5b82f020549?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTJ8fHBhcmFjaHV0ZSUyMGp1bXBpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',

                        height: 250,
                        width: double.infinity,
                        fit: BoxFit.cover)),
                Container(
                  height: 250,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'القفز المظلي',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.8),
                      ],
                          stops: [
                        0.6,
                        1
                      ])),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.today,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 6),
                      Text('30 أيام')
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.wb_sunny,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 6),
                      
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.family_restroom,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 6),
                      
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
