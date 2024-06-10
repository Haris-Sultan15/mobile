import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/doctor.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/practice.dart';
import 'package:country_picker/country_picker.dart';
import 'counteries.dart';
import 'notification.dart';
import 'location.dart';
import 'language.dart';
import 'top-specialties.dart';
class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _selectedIndex = 0;

  // List of pages for navigation
  final List<Widget> _pages = [
    Center(child: Text('Home Page')),
    Center(child: Text('Doctors')),
    Center(child: Text('Practice')),
    Center(child: Text('Countries')),
    Center(child: Text('Settings')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Function to show the dialog box
  void _showDialogBox() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return NotificationScreen();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF059B85),
        foregroundColor: Colors.white, // Set the text and icon color to white
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(56.0),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Doctors / Diseases / Hospitals',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // First row
            // First row
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align text to the left
                children: const [
                  Text(
                    'Good Evening Jabir Ali Jabri\nMuscat, Oman',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            // Second row
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assests/img/offers.png'),
            ),
            // Third row
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Categories', style: TextStyle(fontSize: 16)),
                  Icon(Icons.arrow_forward, color: Color(0xFF059B85)),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(5, (index) {
                  return Card(
                    margin: EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 100,
                      width: MediaQuery.of(context).size.width / 3.5 - 16,
                      child: Column(
                        children: [
                          Image.asset('assests/img/doctor.png'),
                          Text('Item ${index + 1}'),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            // Fourth row (same as third)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Symptoms', style: TextStyle(fontSize: 16)),
                  Icon(Icons.arrow_forward, color: Color(0xFF059B85)),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(8, (index) {
                  return Card(
                    margin: EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 100,
                      width: MediaQuery.of(context).size.width / 4.5 - 16,
                      child: Column(
                        children: [
                          Icon(Icons.image, size: 80),
                          Text('Item ${index + 1}'),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            // Fifth row
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Image.asset('assests/img/offers.png'),
              ),
            ),
            // Sixth row (same as third and fourth)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Top Specialities', style: TextStyle(fontSize: 16)),
                  Icon(Icons.arrow_forward, color: Color(0xFF059B85)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // Manual creation of cards
                    Card(
                      margin: EdgeInsets.all(8.0),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(
                            color: Colors.grey[300]!), // Add border color here
                      ),
                      child: SizedBox(
                        height: 80,
                        width: MediaQuery.of(context).size.width / 4 - 16,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DoctorPage()),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assests/img/derma.png', // Replace with your image asset path
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Dermatology',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Add more cards here as needed
                    // Example:
                    Card(
                      margin: EdgeInsets.all(8.0),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(
                            color: Colors.grey[300]!), // Add border color here
                      ),
                      child: SizedBox(
                        height: 80,
                        width: MediaQuery.of(context).size.width / 4 - 16,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TopSpecialtiesScreen()),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assests/img/derma.png', // Replace with your image asset path
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Oncology',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Card(
                      margin: EdgeInsets.all(8.0),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(
                            color: Colors.grey[300]!), // Add border color here
                      ),
                      child: SizedBox(
                        height: 80,
                        width: MediaQuery.of(context).size.width / 4 - 16,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DoctorPage()),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assests/img/derma.png', // Replace with your image asset path
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Orthopedics',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.all(8.0),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(
                            color: Colors.grey[300]!), // Add border color here
                      ),
                      child: SizedBox(
                        height: 80,
                        width: MediaQuery.of(context).size.width / 4 - 16,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DoctorPage()),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assests/img/derma.png', // Replace with your image asset path
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Dermatology',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.all(8.0),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(
                            color: Colors.grey[300]!), // Add border color here
                      ),
                      child: SizedBox(
                        height: 80,
                        width: MediaQuery.of(context).size.width / 4 - 16,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DoctorPage()),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assests/img/derma.png', // Replace with your image asset path
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Dermatology',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Repeat the above structure for more cards
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Top Hospitals', style: TextStyle(fontSize: 16)),
                  Icon(Icons.arrow_forward, color: Color(0xFF059B85)),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(5, (index) {
                  return Card(
                    margin: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 150,
                      child: Column(
                        children: [
                          Icon(Icons.image, size: 100),
                          Text('Item ${index + 1}'),
                          Text('3.5-16'),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            // Seventh row
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.grey[300],
                      child: Center(child: Text('Box 1')),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.grey[300],
                      child: Center(child: Text('Box 2')),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.discount),
              label: 'Offers',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'More',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xFF059B85),
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
          backgroundColor:
              Colors.white, // Set the background color of BottomNavigationBar
          elevation: 0, // Remove elevation to ensure no shadow
        ),
      ),
    );
  }
}
