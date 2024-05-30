import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'index.dart';  // Import the new page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Country List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List countries = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchCountries();
  }

  Future<void> fetchCountries() async {
    final response = await http.get(Uri.parse('https://demolab2.hospogate.com/api/countries'));
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);

      // Check if the JSON response contains a 'data' key
      if (jsonResponse is Map<String, dynamic> && jsonResponse.containsKey('data')) {
        setState(() {
          countries = jsonResponse['data'];
          isLoading = false;
        });
      } else {
        setState(() {
          countries = jsonResponse;
          isLoading = false;
        });
      }
    } else {
      throw Exception('Failed to load countries');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Country List'),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: countries.length,
                    itemBuilder: (context, index) {
                      final country = countries[index];

                      return Card(
                        margin: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: SizedBox(
                            width: 50,
                            height: 50,
                            child: Image.network(
                              'https://via.placeholder.com/50', // Replace with actual flag URL if available
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(country['name'] ?? 'Unknown'),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Country Code: ${country['code'] ?? 'N/A'}'),
                              Text('Capital: ${country['capital'] ?? 'Not Available'}'),
                              Text('Region: ${country['region'] ?? 'N/A'}'),
                              Text('Subregion: ${country['subregion'] ?? 'N/A'}'),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const IndexPage()),
                      );
                    },
                    child: const Text('Go to Index Page'),
                  ),


                
                ),
              ],
            ),
    );
  }
}
