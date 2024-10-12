import 'package:flutter/material.dart';
import 'package:travel_app/Models/Trips_data_model.dart';

class discbionWidget extends StatelessWidget {
   discbionWidget({super.key,required this.ttrip});
  final Trip ttrip;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.network(
        ttrip.imageUrl,
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
              }
      )],
    );
  }
}
