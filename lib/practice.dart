import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/index.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/doctor.dart';

class PracticePage extends StatelessWidget {
  const PracticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practice Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Text(
                    'Added null safety checks for the country attributes to avoid errors in case any of the fields are missing.'),
              ),
            ),
            SizedBox(height: 16),  // Add some spacing between the containers
            InkWell(
              onDoubleTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorPage()));
              } ,
              
              child:Container(
              height: 200,
              width: 200,
              color: Colors.amber,
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Text(
                    'Added null safety checks for the country attributes to avoid errors in case any of the fields are missing.'),
              ),
            ),) 
          ],
        ),
      ),
    );
  }
}
