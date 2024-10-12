import 'package:flutter/material.dart';
import 'package:travel_app/Models/Trips_data_model.dart';
import 'package:travel_app/Widget/discbion_Widget.dart';

class DiscrbionScreen extends StatefulWidget {
  DiscrbionScreen({super.key, required this.trip});
  final Trip trip;

  @override
  State<DiscrbionScreen> createState() => _DiscrbionScreenState();
}

class _DiscrbionScreenState extends State<DiscrbionScreen> {
  bool onpressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          widget.trip.title,
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.green,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 250,
                width: double.infinity,
                child: Image.network(
                  widget.trip.imageUrl,
                  fit: BoxFit.cover,
                )),
            TripScreen(
              TittleText: "الانشطة",
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                height: 200,
                child: ListView.builder(
                    itemCount: widget.trip.activities.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 0.3,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: Text(
                            widget.trip.activities[index],
                          ),
                        ),
                      );
                    })),
            SizedBox(height: 10),
            TripScreen(TittleText: 'البرنامج اليومي'),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              height: 200,
              child: ListView.builder(
                  itemCount: widget.trip.program.length,
                  itemBuilder: (context, index) => ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text('يوم ${index + 1}')),
                      title: Text(widget.trip.program[index]))),
            )
          ],
        ),
      ),
      floatingActionButton: IconButton(
        icon: Icon(
          onpressed ? Icons.star : Icons.star_border,
          color: Color.fromARGB(255, 2, 2, 2),
          size: 60,
        ),
        onPressed: () {
          onpressed = true;
        },
      ),
    );
  }
}

class TripScreen extends StatelessWidget {
  const TripScreen({super.key, required this.TittleText});
  final String TittleText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      alignment: Alignment.topRight,
      child: Text(
        TittleText,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 40, color: Colors.blue),
      ),
    );
  }
}
