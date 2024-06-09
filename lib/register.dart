import 'package:flutter/material.dart';
import 'regsiter_otp.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController phoneController = TextEditingController();
  String? phoneNumberError;

  // Function to validate the phone number
  String? _validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }
    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'Invalid phone number';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Please enter your phone number',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'We will share your information with the doctor',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'Phone Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                errorText: phoneNumberError,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  // Validate phone number
                  setState(() {
                    phoneNumberError = _validatePhoneNumber(phoneController.text);
                  });

                  // If phone number is valid, navigate to OTP screen
                  if (phoneNumberError == null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegistrationOTP()),
                    );
                  }
                },
                child: Text('Register'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF059B85),
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                  textStyle: TextStyle(fontSize: 16),
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
