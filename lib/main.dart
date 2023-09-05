import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the primary color for the app
        primaryColor: Colors.blue,

        // Define the text theme with custom font and styles
        textTheme: TextTheme(
          bodyMedium: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.green),
          headline5: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.green),
        ),

        // Define other properties like button styles, etc.
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello, World!',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
