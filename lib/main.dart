import 'package:flutter/material.dart';
import 'package:flutter_folder_structure/dev/screens/test_screen.dart';
import 'package:flutter_folder_structure/res/colors.dart';
import 'package:flutter_folder_structure/res/dimens.dart';
import 'package:flutter_folder_structure/res/routes.dart';

import 'dev/ui_global/buttons.dart';

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
      title: 'Flutter Folder Structure',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.amber.shade200,
        ),
        useMaterial3: true,
        colorSchemeSeed: Colors.red,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: MyTestScreen(),
      routes: routes,
      initialRoute: '/MyTestScreen',
      onGenerateRoute: (RouteSettings settings) {
        // Handle unknown routes
        return MaterialPageRoute(builder: (context) => MyTestScreen());
      },
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
                style: TextStyle(color: CustomColors.textColor),
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(
                width: ScreenSize.width(context) * 0.25,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('data'),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: MyCustomButtons(
          onPressed: _incrementCounter,
          icon: Icons.abc,
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
