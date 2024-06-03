import 'package:flutter/material.dart';
import 'package:flutter_application_1/doctor.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/practice.dart';
import 'package:country_picker/country_picker.dart';
import 'counteries.dart';




class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to index page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to the Index Page!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            const Text(
              'This is a new page created in the app.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20), // Add some spacing
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DoctorPage()),
                );
              },
              child: const Text('Doctors Lists'),
            ),
            
            // ElevatedButton(onPressed: () 
            // {
            //   Navigator.pop(
            //     context,
            //     MaterialPageRoute(builder: (context) => const TestPage()));
            // },
            //  child: Text('Go To Practice Page')),
               InkWell(
            onDoubleTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const DoctorPage()));
            },
             child: Text('i am inkwell widget please double tap on me')
          ),
              //  ElevatedButton
              //   (onPressed: () {
              //     Navigator.pop
              //     (context, 
              //     MaterialPageRoute(builder: (context) => const TestPage()),
                  
              //     );
              //   }, 
              //   child: Text('Test Page'),),
             ElevatedButton
                (onPressed: () {
                  Navigator.pop
                  (context, 
                  MaterialPageRoute(builder: (context) => const CountriesPage()),
                  
                  );
                }, 
                child: Text('Select Country'),),

                 InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  child: Text('Double Tap on me'),
                ),
SizedBox(height: 16),
          ElevatedButton(onPressed: () {
Navigator.push(
  context, MaterialPageRoute(builder: (context) => const PracticePage()),
);

          }, child: Text('Go to practice page')),
            ElevatedButton(onPressed: () {
Navigator.push(
  context, MaterialPageRoute(builder: (context) => const CountriesPage()),
);

          }, child: Text('Select Your Country')),
        
          
          ],
        ),
      ),
      
    );
  }
}
