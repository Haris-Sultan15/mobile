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
                    height: 120,
                    width: MediaQuery.of(context).size.width / 3 - 16,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(24),
                      child: Text(
                        "Box 1: Avoid errors in case any of the fields are missing.",
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
                    height: 120,
                    width: MediaQuery.of(context).size.width / 3 - 16,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(24),
                      child: Text(
                        'Box 2: Added null safety checks for the country',
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
                    height: 120,
                    width: MediaQuery.of(context).size.width / 3 - 16,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 23, 3, 201),
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(24),
                      child: Text(
                        'Box 3: Added null safety checks for the country attributes to avoid errors in case any of the fields are missing.',
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
                    height: 120,
                    width: MediaQuery.of(context).size.width / 3 - 16,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(24),
                      child: Text(
                        'Box 4: Added null safety checks for the country attributes to avoid errors in case any of the fields are missing.',
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
                    height: 120,
                    width: MediaQuery.of(context).size.width / 3 - 16,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(24),
                      child: Text(
                        'Box 5: Added null safety checks for the country attributes to avoid errors in case any of the fields are missing.',
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
                    height: 120,
                    width: MediaQuery.of(context).size.width / 3 - 16,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(24),
                      child: Text(
                        'Box 6: Added null safety checks for the country attributes to avoid errors in case any of the fields are missing.',
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
