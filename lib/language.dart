import 'package:flutter/material.dart';
import 'welcome.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  String? _selectedLanguage = 'English'; // Default language set to English

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language'),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assests/img/health-icon.png', // Your image asset
              width: 120,
              height: 120,
            ),
            const SizedBox(height: 20),
            const Text(
              'Choose Your Language',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 80.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedLanguage = 'English';
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          color: _selectedLanguage == 'English' ? Color(0xFF059B85) : Colors.white,
                        ),
                        child: Text(
                          'English',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: _selectedLanguage == 'English' ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedLanguage = 'Arabic';
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          color: _selectedLanguage == 'Arabic' ? Color(0xFF059B85) : Colors.white,
                        ),
                        child: Text(
                          'عربي',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: _selectedLanguage == 'Arabic' ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen() ));
              },
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFF059B85), // Set the text color to green
              ),
              child: const Text(
                'Next',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
