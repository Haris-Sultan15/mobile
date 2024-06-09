import 'package:flutter/material.dart';
import 'notification.dart';

class LocationPermissionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Permission'),
        centerTitle: true,
        backgroundColor: Colors.white, // Set app bar background color to white
        elevation: 0, // Remove the shadow under the app bar
      ),
      backgroundColor: Colors.white, // Set background color to white
      body: Container(
        height: MediaQuery.of(context).size.height, // Full screen height
        padding: const EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 4,
              // Adjust flex values to control spacing
              child: Center(
                child: Image.asset(
                  'assests/img/location.png', // Replace with your image asset path
                  width: 300,
                  height: 300,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Text(
                    'Would you like to allow location access?',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Handle "Not Allow" click
                          print('Not Allow clicked');
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen() ));
                        },
                        child: Text(
                          'Not Allow',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      SizedBox(width: 8), // Small gap between the buttons
                      TextButton(
                        onPressed: () {
                          // Handle "Allow" click
                          print('Allow clicked');
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen() ));
                        },
                        child: Text(
                          'Allow',
                          style: TextStyle(color: Color(0xFF059B85)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
