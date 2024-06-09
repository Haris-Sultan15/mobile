import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter_application_1/index.dart';
import 'package:flutter_application_1/practice.dart';
import 'welcome.dart';

class CountriesPage extends StatefulWidget {
  const CountriesPage({Key? key}) : super(key: key);

  @override
  _CountriesPageState createState() => _CountriesPageState();
}

class _CountriesPageState extends State<CountriesPage> {
  Country? _selectedCountry;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _loadCountries();
    });
  }

  void _loadCountries() {
    showCountryPicker(
      context: context,
      showPhoneCode: true, // Shows phone code before the country name.
      onSelect: (Country country) {
        setState(() {
          _selectedCountry = country;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select a Country'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white, // Set background color to white
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _selectedCountry == null
                  ? 'No country selected'
                  : 'Selected: ${_selectedCountry!.name} ${_selectedCountry!.flagEmoji} (+${_selectedCountry!.phoneCode})',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _loadCountries,
              child: const Text('Select Country'),
               style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF059B85),
                foregroundColor: Colors.white,
              
              ),
            ),
            
              TextButton(
                        onPressed: () {
                          // Handle "Allow" click
                          print('Allow clicked');
                          Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen() ));
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(color: Color(0xFF059B85)),
                        ),
                      ),
          ],
        ),
      ),
    );
  }
}
