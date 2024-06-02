import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

class CountriesPage extends StatefulWidget {
  const CountriesPage({Key? key}) : super(key: key);

  @override
  _CountriesPageState createState() => _CountriesPageState();
}

class _CountriesPageState extends State<CountriesPage> {
  Country? _selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select a Country'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _selectedCountry == null
                  ? 'No country selected'
                  : 'Selected Country: ${_selectedCountry!.name} (+${_selectedCountry!.phoneCode})',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showCountryPicker(
                  context: context,
                  showPhoneCode: true, // Shows phone code before the country name.
                  onSelect: (Country country) {
                    setState(() {
                      _selectedCountry = country;
                    });
                  },
                );
              },
              child: const Text('Select Country'),
            ),
          ],
        ),
      ),
    );
  }
}
