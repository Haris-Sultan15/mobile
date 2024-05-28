import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random User Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RandomUserPage(),
    );
  }
}

class RandomUserPage extends StatefulWidget {
  @override
  _RandomUserPageState createState() => _RandomUserPageState();
}

class _RandomUserPageState extends State<RandomUserPage> {
  List<dynamic> users = [];

  @override
  void initState() {
    super.initState();
    fetchRandomUsers();
  }

  Future<void> fetchRandomUsers() async {
    final response =
        await http.get(Uri.parse('https://randomuser.me/api/?results=1200'));

    if (response.statusCode == 200) {
      setState(() {
        users = json.decode(response.body)['results'];
      });
    } else {
      throw Exception('Failed to load random users');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cardiology Doctors Lists'),
      ),
      body: users.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(user['picture']['thumbnail']),
                    ),
                    title: Text(
                        '${user['name']['first']} ${user['name']['last']}'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(user['email']),
                        Text('Phone: ${user['phone']}'),
                        Text(
                            'Location: ${user['location']['city']}, ${user['location']['country']}'),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
