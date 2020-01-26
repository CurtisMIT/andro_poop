import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'Components/Start.dart';
import 'Components/Info.dart';
import 'Components/CalendarView.dart';
import 'Components/Popup.dart';

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
      // '/': (context) => Popup(),
      '/second': (context) => Info(),
      '/calendar': (context) => SecondScreen(),
      '/popup': (context) => Popup()
     },
   );
 }
}