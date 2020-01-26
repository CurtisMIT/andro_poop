import 'package:flutter/material.dart';
//import 'Components/Start.dart';
import 'Components/CalendarView.dart';

import 'Components/Symptoms/Poop/Main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Baby Names',
     initialRoute: '/',
     routes: {
       '/': (context) => Main(),
       '/second': (context) => CalendarView()
     },
   );
 }
}