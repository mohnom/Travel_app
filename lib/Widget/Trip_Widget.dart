import 'package:flutter/material.dart';
import 'package:travel_app/Models/Trips_data_model.dart';
import 'package:travel_app/Screens/Discrbion_screen.dart';
import 'package:travel_app/app_data.dart';

class TripWidget extends StatelessWidget {
   TripWidget({super.key, required this.trips});
  final Trip trips;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) {
          return DiscrbionScreen(
            trip: trips,
          );
        })).then((result) {
          print(result);
        });
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
                      trips.imageUrl,
                      loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress){
                if (loadingProgress == null) {
            return child;
          }
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
              },
                        height: 250,
                        width: double.infinity,
                        fit: BoxFit.cover)),
                Container(
                  height: 250,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  alignment: Alignment.bottomRight,
                  child: Text(
                    trips.title,
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
                      Text('${trips.duration} أيام')
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
                      Text(trips.SeasinText)
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
                      Text(trips.TripTypeText)
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
