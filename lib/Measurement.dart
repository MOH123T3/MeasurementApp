// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ironmeasurement/Utils.dart';

class Measurement extends StatefulWidget {
  const Measurement({super.key});

  @override
  State<Measurement> createState() => _MeasurementState();
}

class _MeasurementState extends State<Measurement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Utils.backgroundDesign(
          100,
          40,
          Utils.backgroundColor,
          BorderRadius.horizontal(
              left: Radius.circular(30), right: Radius.circular(30)),
          55,
          35,
          Utils.mainColor,
          BorderRadius.horizontal(
              left: Radius.circular(30), right: Radius.circular(30)),
        )
      ]),
    );
  }
}
