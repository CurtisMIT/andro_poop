import 'package:flutter/material.dart';
import 'Components/Start.dart';
import 'Components/CalendarView.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Baby Names',
     initialRoute: '/',
     routes: {
       '/': (context) => Start(),
       '/second': (context) => CalendarView()
     },
   );
 }
}