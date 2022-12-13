// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';

import 'package:simple_gradient_text/simple_gradient_text.dart';

class verification extends StatefulWidget {
  const verification({super.key});

  @override
  State<verification> createState() => _verificationState();
}

class _verificationState extends State<verification> {
  int sec = 0;
  int i = 0;
  Timer? countdownTimer;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => startTimer());
  }

  void startTimer() {
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }

  void setCountDown() {
    setState(() {
      if (sec == 3) {
        countdownTimer!.cancel();
      } else {
        sec = sec + 1;
      }
    });
  }

  Widget Elps(BuildContext context) {
    return Container(
      width: 123,
      height: 123,
      margin: EdgeInsets.only(
        left: 134,
        top: 94,
        right: 133.67,
      ),
      child: Image.asset("assests/images/Confirmation balls.png"),
    );
  }

  Widget text(BuildContext context) {
    return Container(
      width: 354,
      height: 28,
      margin: EdgeInsets.only(top: 245, left: 18, right: 18),
      child: Text(
        "ACTIVATION COMPLETE",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 22,
            letterSpacing: .35,
            color: Colors.white),
      ),
    );
  }

  Widget Card2(BuildContext context, String add, String heading) {
    return Container(
        width: 298.8,
        height: 80,
        //margin: EdgeInsets.only(top: 335, left: 16, right: 26),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              width: 32,
              height: 32,
              margin: EdgeInsets.only(left: 18),
              child: Image.asset("assests/images/${add}.png"),
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              child: Text(
                heading,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
            )
          ],
        ));
  }

  Widget card1(BuildContext context) {
    return Container(
      width: 346,
      height: 88,
      // margin: EdgeInsets.only(top: 335, left: 16, right: 26),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Container(
              height: 44,
              color: Colors.white,
              margin: EdgeInsets.only(top: 16, left: 21, right: 93.54),
              // child: Container(
              //   margin: EdgeInsets.only(bottom: 21),
              //   child: Image.asset("assests/images/frame.png"),
              // )
              child: RichText(
                text: TextSpan(children: [
                  WidgetSpan(
                    child: Image.asset("assests/images/group.png"),
                  ),
                  TextSpan(
                      text: "  You recieved ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          letterSpacing: -0.41)),
                  TextSpan(
                      text: "\$2 Talktime",
                      style: new TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w700,
                          foreground: Paint()
                            ..shader = LinearGradient(
                              colors: <Color>[
                                Color.fromARGB(255, 183, 67, 237)
                                    .withOpacity(1),
                                Color(0xff25C3D8).withOpacity(1),

                                //add more color here.
                              ],
                            ).createShader(
                                Rect.fromLTWH(70.0, 70.0, 150.0, 150.0)))),
                ]),
              )),
          Container(
              height: 44,
              width: 346,
              margin: EdgeInsets.only(top: 48),
              decoration: BoxDecoration(
                color: Color(0xFFFF2F2F7),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                  height: 44,
                  width: 135,
                  margin: EdgeInsets.only(top: 12, left: 21),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 12),
                        child: Text(
                          "See Talktime Plans",
                          //textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        margin: EdgeInsets.only(bottom: 12),
                        child: Image.asset("assests/images/vector.png"),
                      )
                    ],
                  )))
        ],
      ),
    );
  }

  Widget card(BuildContext context) {
    return Container(
        width: 346,
        height: 88,
        decoration: BoxDecoration(
          //color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.only(top: 335, left: 16, right: 26),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            card1(context),
            const SizedBox(
              width: 8,
            ),
            Card2(context, "privacy", "Private Calling"),
            SizedBox(
              width: 8,
            ),
            Card2(context, "desktop", "Cross Platform"),
            SizedBox(
              width: 8,
            ),
            Card2(context, "calling", "Cheap calling rates"),
            SizedBox(
              width: 8,
            ),
            Card2(context, "Group", "Call recording on all numbers"),
            SizedBox(
              width: 8,
            ),
            Card2(context, "virtual", "Buy different virtual numbers"),
            SizedBox(
              width: 8,
            ),
          ],
        ));
  }

  Widget dotindex(BuildContext context) {
    return Container(
        width: 86,
        height: 24,
        margin: EdgeInsets.only(
          left: 159,
          top: 420,
        ),
        padding: EdgeInsets.only(left: 9, right: 9),
        child: Row(
          children: [
            Text(
              ".",
              style: i == 0
                  ? const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                    )
                  : const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              ".",
              style: i == 1
                  ? const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 24)
                  : const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              ".",
              style: i == 2
                  ? const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 24)
                  : const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              ".",
              style: i == 3
                  ? const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 24)
                  : const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              ".",
              style: i == 4
                  ? const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 24)
                  : const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
            )
          ],
        ));
  }

  Widget Button(BuildContext context) {
    return Container(
        width: 358,
        height: 49,
        margin: EdgeInsets.only(left: 16, top: 609, right: 16),
        padding: EdgeInsets.only(left: 14, top: 16, right: 14, bottom: 10),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                transform: GradientRotation(0.1713913),
                colors: [
                  Color(0xffC241FF).withOpacity(1),
                  Color(0xff25C3D8).withOpacity(1),
                ]),
            // color: Colors.white,
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          "Buy second phone number",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 16,
            letterSpacing: .7,
          ),
        ));
  }

  Widget Button2(BuildContext context) {
    return Container(
        width: 358,
        height: 49,
        margin: EdgeInsets.only(left: 16, top: 674, right: 16),
        padding: EdgeInsets.only(left: 14, top: 14, right: 14, bottom: 10),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          "Finish Setup",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 16,
            letterSpacing: .7,
          ),
        ));
  }

  Widget empty() {
    return Container();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
              // begin: Alignment.bottomCenter,
              // end: Alignment(0.25, 0.25),
              // transform: GradientRotation(3.141713913 / 4),
              center: Alignment(0, 1),
              //tileMode: TileMode.mirror,
              radius: 1,
              colors: [
                Color.fromARGB(255, 58, 121, 121).withOpacity(1),
                Color.fromARGB(255, 54, 55, 97).withOpacity(1),
                Color.fromARGB(255, 54, 50, 77).withOpacity(1),
                Colors.black.withOpacity(1)
              ]),
        ),
        constraints: BoxConstraints(
          maxHeight: 844,
          maxWidth: 390,
        ),
        child: Column(children: [
          Stack(
            children: [
              Elps(context),
              text(context),
              sec >= 1 ? card(context) : empty(),
              sec >= 1 ? dotindex(context) : empty(),
              sec >= 2 ? Button(context) : empty(),
              sec >= 2 ? Button2(context) : empty(),
            ],
          )
        ]),
      )),
    );
  }
}
