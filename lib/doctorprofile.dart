import 'package:flutter/material.dart';

class DoctorProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fixed background image
          Image.asset(
            'assests/img/doc.png', // Replace with your image path
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          // Top icons
          Positioned(
            top: 20, // Margin from the top
            left: 16,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            top: 40, // Margin from the top
            right: 16,
            child: IconButton(
              icon: Icon(Icons.share, color: Colors.white),
              onPressed: () {
                // Share functionality
              },
            ),
          ),
          Column(
            children: [
              SizedBox(height: 240), // Spacing to account for background image height
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          // Main Profile Information
                          Center(
                            child: Column(
                              children: [
                                Text(
                                  'Dr. Robert Fedrik',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Cardiology Consultant',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.star, color: Colors.amber),
                                    SizedBox(width: 8),
                                    Text('4.8 (200 reviews)'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          // Row of 3 columns
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InfoColumn(title: '20+ years', value: 'of Experience'),
                              InfoColumn(title: '100% (120) ', value: 'Satisfied Patients'),
                              InfoColumn(title: '15-20 Mins', value: 'Wait Time'),
                            ],
                          ),
                          SizedBox(height: 20),
                          // Row of 2 columns
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: InfoColumn(
                                  title: '20 OMR',
                                  value: 'In Hospital Fee',
                                ),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: InfoColumn(
                                  title: '8 OMR',
                                  value: 'Video Consultation Fee',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          // Accordion Section
                          AnimatedAccordion(
                            title: 'Biography',
                            content: 'Dr. John Doe is a renowned oncology specialist with over 10 years of experience in treating various types of cancers...',
                          ),
                          SizedBox(height: 20),
                          // Horizontal Scroll View Section
                          Text(
                            'Similar Doctors',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SpecialtyInkWell(
                                  imagePath: 'assests/img/specialities.png',
                                  title: 'Dermatology',
                                  rating: 4.5,
                                ),
                                SpecialtyInkWell(
                                  imagePath: 'assests/img/specialities.png',
                                  title: 'Dermatology',
                                  rating: 4.5,
                                ),
                                SpecialtyInkWell(
                                  imagePath: 'assests/img/specialities.png',
                                  title: 'Dermatology',
                                  rating: 4.5,
                                ),
                                SpecialtyInkWell(
                                  imagePath: 'assests/img/specialities.png',
                                  title: 'Dermatology',
                                  rating: 4.5,
                                ),
                                SpecialtyInkWell(
                                  imagePath: 'assests/img/specialities.png',
                                  title: 'Cardiology',
                                  rating: 4.7,
                                ),
                                SpecialtyInkWell(
                                  imagePath: 'assests/img/specialities.png',
                                  title: 'Neurology',
                                  rating: 4.8,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          // Amber button
                          Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF059B85),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                minimumSize: Size(double.infinity, 50), // Button height
                              ),
                              child: Text(
                                'Book an Appointment',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class InfoColumn extends StatelessWidget {
  final String title;
  final String value;

  const InfoColumn({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class AnimatedAccordion extends StatefulWidget {
  final String title;
  final String content;

  const AnimatedAccordion({required this.title, required this.content});

  @override
  _AnimatedAccordionState createState() => _AnimatedAccordionState();
}

class _AnimatedAccordionState extends State<AnimatedAccordion> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Icon(_isExpanded ? Icons.expand_less : Icons.expand_more),
            ],
          ),
        ),
        AnimatedSize(
          duration: Duration(milliseconds: 300),
          child: ConstrainedBox(
            constraints: _isExpanded
                ? BoxConstraints()
                : BoxConstraints(maxHeight: 0),
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(widget.content),
            ),
          ),
        ),
      ],
    );
  }
}

class SpecialtyInkWell extends StatelessWidget {
  final String imagePath;
  final String title;
  final double rating;

  const SpecialtyInkWell({
    required this.imagePath,
    required this.title,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 120,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  imagePath,
                  width: 120,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, size: 16, color: Colors.amber),
                  SizedBox(width: 4),
                  Text(rating.toString(), style: TextStyle(fontSize: 14, color: Colors.grey)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
