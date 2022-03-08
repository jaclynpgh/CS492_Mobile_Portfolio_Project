import 'package:flutter/material.dart';

import '/screens/waste_list_screen.dart';





class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.flutter run
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project 5',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        
      ),
      home:  WasteListScreen(),
    );
  }
}
