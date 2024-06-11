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
          'Oncology Doctor List',
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
                      FilterButton(label: 'All Filters', icon: Icons.filter_list),
                      FilterButton(label: 'Lowest Fee'),
                      FilterButton(label: 'Near Me'),
                      FilterButton(label: 'Female'),
                      FilterButton(label: 'Available Now'),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '148 Result Found',
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
                  headline: 'Dr. Siddhartha Mukherjee',
                  subText: 'Renowned oncologist',
                ),
                SpecialtyCard(
                  imagePath: 'assests/img/specialities.png',
                  headline: 'Dr. Patrick Soon-Shiong',
                  subText: 'Leading oncologist',
                ),
                SpecialtyCard(
                  imagePath: 'assests/img/specialities.png',
                  headline: 'Dr. José Baselga',
                  subText: 'Oncologist Specialist',
                ),
                SpecialtyCard(
                  imagePath: 'assests/img/specialities.png',
                  headline: 'Dr. Paul Bunn',
                  subText: 'Professor of Onocologist',
                ),
                SpecialtyCard(
                  imagePath: 'assests/img/specialities.png',
                  headline: 'Dr. Nancy Davidson',
                  subText: 'Director of the UPMC',
                ),
                SpecialtyCard(
                  imagePath: 'assests/img/specialities.png',
                  headline: 'Dr. James Allison',
                  subText: 'Nobel Prize winner',
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

class SpecialtyCard extends StatefulWidget {
  final String imagePath;
  final String headline;
  final String subText;

  const SpecialtyCard({
    required this.imagePath,
    required this.headline,
    required this.subText,
  });

  @override
  _SpecialtyCardState createState() => _SpecialtyCardState();
}

class _SpecialtyCardState extends State<SpecialtyCard> {
  bool isFavorite = false;

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
                            widget.imagePath,
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
                                widget.headline,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                widget.subText,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  ...List.generate(1, (index) {
                                    return Icon(Icons.star,
                                        size: 16, color: Colors.amber);
                                  }),
                                  SizedBox(width: 4),
                                  Text('4.9 (122 reviews)', style: TextStyle(fontSize: 12, color: Colors.grey)),
                                ],
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
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: isFavorite ? Colors.red : Color(0xFF059B85),
                        ),
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            side: BorderSide(color: Colors.grey, width: 0.5),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.videocam, color: Colors.grey),
                            SizedBox(width: 4),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Consultation', style: TextStyle(fontSize: 12, color: const Color.fromARGB(255, 37, 37, 37))),
                                Text('Mon-Wed 7PM to 11PM', style: TextStyle(fontSize: 8, color: Color.fromARGB(255, 90, 90, 90))),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            side: BorderSide(color: Colors.grey, width: 0.5),
                          ),
                        ),
                        child: Row(
                          children: [
                            Image.asset('assests/img/badar.png', width: 40, height: 40),
                            SizedBox(width: 4),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Badar Ul..', style: TextStyle(fontSize: 12, color: const Color.fromARGB(255, 37, 37, 37))),
                                Text('M, Tu, St, Sn', style: TextStyle(fontSize: 10, color: const Color.fromARGB(255, 90, 90, 90))),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                
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
