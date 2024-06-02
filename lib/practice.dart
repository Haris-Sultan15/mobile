import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
              Padding(
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
                      border: Border.all(color: Colors.grey, width: .5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "Doctors",
                        textAlign: TextAlign.center,
  
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
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
                      border: Border.all(color: Colors.grey, width: .5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        'Hospitals',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
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
                      border: Border.all(color: Colors.grey, width: .5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        'Labortery',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
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
                      border: Border.all(color: Colors.grey, width: .5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        'Pharmacies',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
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
                      border: Border.all(color: Colors.grey, width: .5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        'Clinics',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
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
                      border: Border.all(color: Colors.grey, width: .5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      
                      child: Text(
                        'Specialist Doctors',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        
      ),
  
    );
  }
}
