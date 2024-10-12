import 'package:flutter/material.dart';
import 'package:travel_app/Screens/Minu_Screen.dart';

class FlutraScreen extends StatefulWidget {
  const FlutraScreen({super.key});

  @override
  State<FlutraScreen> createState() => _FlutraScreenState();
}

class _FlutraScreenState extends State<FlutraScreen> {
  var isSummer = false;
  var isWinter = false;
  var isFamily = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MinuScreen(),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text("الفلترة ",
              style: TextStyle(color: Colors.white, fontSize: 25)),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 30,),
                SwitchListTile(
                  title: Text('الرحلات الصيفية'),
                  subtitle: Text('أظهار الرحلات الصيفية فقط'),
                    value: isSummer,
                    onChanged: (newValue) {
                     setState(() {
                        isSummer = newValue;
                     });
                    }),
                     SwitchListTile(
                  title: Text('الرحلات الشتوية '),
                  subtitle: Text('أظهار الرحلات الشتوية  فقط'),
                    value: isWinter,
                    onChanged: (newValue) {
                      setState(() {
                        isWinter = newValue;
                      });
                    }),
                     SwitchListTile(
                  title: Text('الرحلات العائلية '),
                  subtitle: Text('أظهار الرحلات العائلية فقط'),
                    value: isFamily,
                    onChanged: (newValue) {
                     setState(() {
                        isFamily = newValue;
                     });
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
