import 'package:flutter/material.dart';
import 'package:travel_app/Widget/Categorys_widget.dart';
import 'package:travel_app/app_data.dart';
class Homebody extends StatelessWidget {
  const Homebody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: Categories_data.length,
      gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 7/8,
       
        ),
        itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: CategorysWidget(category:Categories_data[index]),
      );
    });
  }
}
