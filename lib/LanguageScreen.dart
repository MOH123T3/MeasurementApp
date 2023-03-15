// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ironmeasurement/Utils.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.backgroundColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icon2.png", color: Colors.white38),
            Utils.textStyle(
              'WELCOME!',
              28,
              FontWeight.bold,
            ),
            SizedBox(
              height: 20,
            ),
            Utils.textStyle(
                'Please choose a language to use', 22, FontWeight.normal),
            SizedBox(
              height: 20,
            ),
            Utils.textStyle('English', 22, FontWeight.normal),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )),
                child: Center(
                    child: SizedBox(
                  width: 200,
                  height: 60,
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.navigate_next_outlined,
                      color: Colors.black,
                    ),
                    label: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Get.toNamed("/homeScreen");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Utils.mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                  ),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
