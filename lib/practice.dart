import 'package:flutter/material.dart';
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
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              // Doctor Card
              buildCard(
                context,
                'assests/img/doctor.png', 
                'Doctors',
              ),
              // Hospital Card
              buildCard(
                context,
                'assests/img/Hospitals.png', 
                'Hospitals',
              ),
              // Laboratory Card
              buildCard(
                context,
                'assests/img/labortery.png', 
                'Laboratory',
              ),
              // Pharmacy Card
              buildCard(
                context,
                'assests/img/Pharmacy.png', 
                'Pharmacy',
              ),
              // Clinic Card
              buildCard(
                context,
                'assests/img/Hospitals.png', 
                'Clinics',
              ),
              // Specialist Doctor Card
              buildCard(
                context,
                'assests/img/doctor.png', 
                'Doctors',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(BuildContext context, String imagePath, String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DoctorPage()),
          );
        },
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width / 3.5 - 16,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            border: Border.all(color: Colors.grey, width: 0.5),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imagePath,
                  height: 54,
                  width: 54,
                ),
                SizedBox(height: 8), // Space between image and text
                Text(
                  title,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
