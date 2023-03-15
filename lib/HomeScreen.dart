// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ironmeasurement/Utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  List<String> title = ["Measurement", "More", "Setting", "About us"];
  List<String> icon = [
    "assets/tapemeasure.png",
    "assets/more.png",
    "assets/settings.png",
    "assets/aboutus.png",
  ];
  List<String> roughs = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Utils.mainColor,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(90))),
              ),
              Container(
                height: 60,
                width: 25,
                decoration: BoxDecoration(
                    color: Utils.mainColor,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(80),
                        topLeft: Radius.circular(80))),
              ),
            ],
          ),
          Image.asset(
            "assets/icon.png",
            color: Colors.black,
            height: 150,
            width: 190,
          ),
          Stack(
            alignment: Alignment.topRight,
            children: [
              Center(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(),
                      color: Utils.backgroundColor),
                  child: Center(
                    child: Utils.textStyle("Blacksmith", 22, FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 60,
                width: 25,
                decoration: BoxDecoration(
                    color: Utils.backgroundColor,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(80),
                        topLeft: Radius.circular(80))),
              ),
            ],
          ),
          Expanded(
              flex: 4,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: title.length,
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: () {
                      Get.toNamed("/measurement");
                    },
                    child: Container(
                        margin: EdgeInsets.all(30),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(80),
                                topLeft: Radius.circular(40)),
                            color: Color.fromARGB(255, 65, 231, 209)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Utils.leadingTextStyle(
                                title[index], 22, FontWeight.bold),
                            Image.asset(
                              icon[index],
                              color: Colors.black,
                              height: 40,
                              width: 40,
                            ),
                          ],
                        )),
                  );
                }),
              )),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 60,
                decoration: BoxDecoration(
                    color: Utils.backgroundColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    )),
              ),
              // Container(
              //   height: 30,
              //   width: 90,
              //   decoration: BoxDecoration(
              //       color: Utils.mainColor,
              //       borderRadius: BorderRadius.only(
              //         topLeft: Radius.circular(80),
              //         topRight: Radius.circular(80),
              //       )),
              // ),
              Container(
                height: 70,
                width: 65,
                decoration: BoxDecoration(
                    color: Utils.mainColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
