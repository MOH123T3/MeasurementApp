// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ironmeasurement/HomeScreen.dart';
import 'package:get/get.dart';
import 'package:ironmeasurement/Measurement.dart';
import 'LanguageScreen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LanguageScreen(),
      getPages: [
        GetPage(
          name: '/',
          page: () => LanguageScreen(),
        ),
        GetPage(name: '/homeScreen', page: () => HomeScreen()),
        GetPage(name: '/measurement', page: () => Measurement())
      ],
    );
  }
}
