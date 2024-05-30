import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/index.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/doctor.dart';

class PracticePage extends StatelessWidget {
  const PracticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practice Page'),
      ),
      body: Center(
        child:Container(
          height: 200,
          width: 200,
        color: Colors.amber,

        )
        // child: const Text(
        //   'This is the Practice Page!',
        //   style: TextStyle(fontSize: 24),
        // ),
      ),
      
    );
  }
}