import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the primary color for the app
        primaryColor: Colors.blue,

        // Define the text theme with custom font and styles
        textTheme: TextTheme(
          bodyMedium: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.green),
          titleMedium: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.red),
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
        // Isso obtém o tema atual do aplicativo a partir do contexto. O context é uma referência ao ambiente de construção de widgets e é usado para acessar informações sobre o aplicativo, como o tema.
        title: Text('My App', style: Theme.of(context).textTheme.titleMedium),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hello, World!',
                style: Theme.of(context).textTheme.bodyMedium),
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
