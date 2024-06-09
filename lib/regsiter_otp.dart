import 'package:flutter/material.dart';
import 'index.dart';

class RegistrationOTP extends StatefulWidget {
  @override
  _RegistrationOTPState createState() => _RegistrationOTPState();
}

class _RegistrationOTPState extends State<RegistrationOTP> {
  List<TextEditingController> otpControllers = List.generate(6, (index) => TextEditingController());
  String? otpError;

  @override
  void initState() {
    super.initState();
    // Add listener to each OTP field controller to move focus to the next field automatically
    for (int i = 0; i < 5; i++) {
      otpControllers[i].addListener(() {
        if (otpControllers[i].text.isNotEmpty) {
          FocusScope.of(context).nextFocus();
        }
      });
    }
  }

  // Function to validate OTP
  String? _validateOTP() {
    for (TextEditingController controller in otpControllers) {
      if (controller.text.isEmpty) {
        return 'Please fill all OTP fields';
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration OTP'),
        backgroundColor: Colors.white, // Set app bar color to white
        centerTitle: true, // Center align title
        iconTheme: IconThemeData(color: Colors.black), // Set icon color to black
      ),
      body: Container(
        color: Colors.white, // Set background color to white
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0), // Add padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Headlines
            Text(
              'Please Verify OTP Code',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 20),
            // OTP boxes
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                6,
                (index) => Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: TextFormField(
                    controller: otpControllers[index],
                    textAlign: TextAlign.center, // Center align text
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                      counterText: '',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Sub headlines
            Text(
              'Didn\'t receive the code?',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              'Resend OTP',
              style: TextStyle(fontSize: 16, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
            Spacer(), // Add spacer to push the button to the bottom
            // Button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  otpError = _validateOTP();
                });
                if (otpError == null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IndexPage()),
                  );
                }
              },
              child: Text('Next'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF059B85),
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity, 50),
                textStyle: TextStyle(fontSize: 16),
                padding: EdgeInsets.symmetric(vertical: 15.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
