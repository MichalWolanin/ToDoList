import 'package:app02/todoui.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

  class MyApp extends StatefulWidget {
    @override
     MyAppState createState() => MyAppState();    
  }

  class MyAppState extends State<MyApp> {
    @override 
    Widget build(BuildContext context) {
      return MaterialApp(
        title: "ToDo",
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          accentColor: Colors.green,
        ),
        home: todoui(),
      );
    }
    
  }




