import 'package:flutter/material.dart';
import 'package:flutter_application_1/index.dart';
import 'register.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white, // Set background color to white
        child: SafeArea(
          child: Column(
            children: [
              // Centered image
              Expanded(
                child: Center(
                  child: Image.asset('assests/img/healthit-logo.png'), // Your image asset
                ),
              ),
              // Button above the footer
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the register screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  child: Text('Sign Up'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF059B85), // Set the background color using hex code
                    foregroundColor: Colors.white, // Set the text color
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    textStyle: TextStyle(fontSize: 16),
                    minimumSize: Size(double.infinity, 50),
                  ),
                ),
              ),
              // Clickable text
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the index page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => IndexPage()),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            color: Color(0xFF059B85),
                          ),
                        ),
                      ],
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
