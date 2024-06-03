import 'package:flutter/material.dart';
import 'package:flutter_application_1/doctor.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/practice.dart';
import 'package:country_picker/country_picker.dart';
import 'counteries.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _selectedIndex = 0;

  // List of pages for navigation
  final List<Widget> _pages = [
    Center(child: Text('Home Page', style: TextStyle(color: const Color.fromARGB(255, 19, 14, 2)),)),
    Center(child: Text('Doctors', style: TextStyle(color: const Color.fromARGB(255, 19, 14, 2)),)),
     Center(child: Text('Practice', style: TextStyle(color: const Color.fromARGB(255, 19, 14, 2)),)),
     Center(child: Text('Countries', style: TextStyle(color: const Color.fromARGB(255, 19, 14, 2)),)),
      Center(child: Text('Settings', style: TextStyle(color: const Color.fromARGB(255, 19, 14, 2)),)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
            InkWell(
              onDoubleTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const DoctorPage()));
              },
              child: Text('I am inkwell widget please double tap on me'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CountriesPage()),
                );
              },
              child: Text('Select Country'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: Text('Double Tap on me'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const PracticePage()),
                );
              }, 
              child: Text('Go to practice page')
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const CountriesPage()),
                );
              }, 
              child: Text('Select Your Country')
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services),
            label: 'Doctors',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Practice',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.public),
            label: 'Countries',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 24, 26, 168),
        onTap: _onItemTapped,
      ),
    );
  }
}
