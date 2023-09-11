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
        useMaterial3: true,
        // Informamos uma cor para o flutter e ele define uma paleta de cor baseada nesta cor definida. Paasando uma semente de uma cor
        /* colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.yellow,
        ),*/

        //OU

        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ),
        scaffoldBackgroundColor: Colors.grey[600],
        appBarTheme: AppBarTheme(
          color: Colors.blue, // Define a cor de fundo do AppBar
          titleTextStyle: TextStyle(
            fontSize: 25.0, // Define o tamanho do texto do título do AppBar
            color: Colors.white, // Define a cor do texto do título do AppBar
          ),
        ),

        // Defina o tema do texto com fontes e estilos personalizados
        textTheme: TextTheme(
          bodyMedium: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.pink),
          titleMedium: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Colors.orange),
        ),
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
        child: Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          color: Colors.blue,
          child: Text('Hello, World!',
              style: Theme.of(context).textTheme.bodyMedium),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
