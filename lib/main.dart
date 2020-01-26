import 'package:flutter/material.dart';
import 'Components/Start.dart';
import 'Components/CalendarView.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() { 
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Baby Names',
     initialRoute: '/',
     routes: {
       '/': (context) => Start(),
       '/second': (context) => SecondScreen()
     },
   );
 }
}