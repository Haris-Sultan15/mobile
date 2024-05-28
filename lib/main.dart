import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health-It',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 58, 183, 141)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Welcome To Health-It'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 15;

  void _incrementCounter() {
    setState(() {
   
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      
        // title: Text(widget.title),
      ),
      body: Center(
    
        child: Column(
      
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            

// Image.asset('assests/img/healthit-logo.png'),
Image.asset('assests/img/healthit-icon.png', width: 200, height: 200,),


          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
