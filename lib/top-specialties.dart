import 'package:flutter/material.dart';

class TopSpecialtiesScreen extends StatefulWidget {
  @override
  _TopSpecialtiesScreenState createState() => _TopSpecialtiesScreenState();
}

class _TopSpecialtiesScreenState extends State<TopSpecialtiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: Text(
          'Top Specialties',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FilterButton(label: 'Filter 1', icon: Icons.filter_list),
                      FilterButton(label: 'Filter 2'),
                      FilterButton(label: 'Filter 3'),
                      FilterButton(label: 'Filter 4'),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Headline',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Sub text',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SpecialtyCard(
                  imagePath: 'assests/img/specialities.png',
                  headline: 'Dermatology',
                  subText: 'Skin Specialist',
                ),
                SpecialtyCard(
                  imagePath: 'assests/img/specialities.png',
                  headline: 'Cardiology',
                  subText: 'Heart Specialist',
                ),
                SpecialtyCard(
                  imagePath: 'assests/img/specialities.png',
                  headline: 'Neurology',
                  subText: 'Brain Specialist',
                ),
                SpecialtyCard(
                  imagePath: 'assests/img/specialities.png',
                  headline: 'Orthopedics',
                  subText: 'Bone Specialist',
                ),
                SpecialtyCard(
                  imagePath: 'assests/img/specialities.png',
                  headline: 'Pediatrics',
                  subText: 'Child Specialist',
                ),
                SpecialtyCard(
                  imagePath: 'assests/img/specialities.png',
                  headline: 'Ophthalmology',
                  subText: 'Eye Specialist',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String label;
  final IconData? icon;

  const FilterButton({required this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: OutlinedButton(
        onPressed: () {},
        child: Row(
          children: [
            if (icon != null) Icon(icon, size: 16, color: Colors.black),
            SizedBox(width: 4),
            Text(label),
          ],
        ),
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}

class SpecialtyCard extends StatelessWidget {
  final String imagePath;
  final String headline;
  final String subText;

  const SpecialtyCard({
    required this.imagePath,
    required this.headline,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(color: Colors.grey, width: 0.5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            imagePath,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                headline,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                subText,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: List.generate(5, (index) {
                                  return Icon(Icons.star,
                                      size: 16, color: Colors.amber);
                                }),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: IconButton(
                        icon: Icon(Icons.favorite_border, color: Colors.red),
                        onPressed: () {
                          // Add to favorite functionality
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Button 1'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Button 2'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: Center(
                      child: Text(
                    'Book Consultations',
                    style: TextStyle(color: Colors.white),
                  )),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF059B85),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    minimumSize: Size(double.infinity, 36),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
