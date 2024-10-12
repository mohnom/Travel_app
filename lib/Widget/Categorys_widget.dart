import 'package:flutter/material.dart';
import 'package:travel_app/Models/Categories_data_Model.dart';
import 'package:travel_app/Models/Trips_data_model.dart';
import 'package:travel_app/Screens/travil_places_screen.dart';
import 'package:travel_app/app_data.dart';

class CategorysWidget extends StatelessWidget {
  const CategorysWidget({super.key, required this.category});
  final Category category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return TravilPlacesScreen(category: category);
        }));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Image.network(
              category.imageUrl,
              height: 250,
              fit: BoxFit.cover,
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
            ),
            Container(
              color: Colors.black.withOpacity(0.4),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                category.title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
