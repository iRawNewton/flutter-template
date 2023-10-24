import 'package:flutter/material.dart';
import 'package:flutter_folder_structure/dev/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Templates',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.amber.shade200,
        ),
        useMaterial3: true,
        colorSchemeSeed: Colors.red,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const HomeScreen(),
    );
  }
}
