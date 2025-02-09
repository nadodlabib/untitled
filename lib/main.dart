import 'package:flutter/material.dart';

import 'Widget/Text_Widget.dart';
import 'Screens/Vaccination.dart';
import 'Screens/VaccinationAlarm.dart';
import 'Screens/VaccinationTable.dart';
import 'Screens/Welcome_Screen.dart';
import 'Screens/dataPage.dart';

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
      home: DataFormPage (),
    );
  }
}
