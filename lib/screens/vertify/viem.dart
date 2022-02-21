import 'dart:async';

import 'package:flutter/material.dart';

import '../../component/codetext.dart';
import 'controller.dart';

class VertifiyScreen extends StatefulWidget {
  VertifiyScreen({Key? key}) : super(key: key);

  @override
  State<VertifiyScreen> createState() => _VertifiyScreenState();
}

class _VertifiyScreenState extends State<VertifiyScreen> {
  final controller = VertifiyController();

  void timerDown() {
    Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        if (controller.second > 0) {
          controller.second--;
        }
      });
    });
  }

  @override
  void initState() {
    timerDown();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(size.shortestSide * .04),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("images/vertifiy.png")),
              ),
              Text(
                "Enter the 4-digit code sent to your phone number 01011738586",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: size.shortestSide * .05),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: size.longestSide * .03,
                    horizontal: size.shortestSide * .05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CodeTextItem(
                      size: size,
                      move: TextInputAction.done,
                    ),
                    CodeTextItem(
                      size: size,
                      move: TextInputAction.done,
                    ),
                    CodeTextItem(
                      size: size,
                      move: TextInputAction.done,
                    ),
                    CodeTextItem(
                      size: size,
                      move: TextInputAction.done,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.longestSide * .01,
              ),
              controller.second == 0
                  ? Center(
                      child: GestureDetector(
                      onTap: () {
                        controller.second = 60;
                      },
                      child: Text(
                        "resend code.",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.red.shade900,
                            fontSize: size.shortestSide * .05),
                      ),
                    ))
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "You can resend code after  ",
                          style: TextStyle(fontSize: size.shortestSide * .04),
                        ),
                        Text(
                          controller.second.toString().padLeft(2, '0') + "sec.",
                          style: TextStyle(
                              fontSize: size.shortestSide * .04,
                              color: Colors.red.shade900,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
              SizedBox(
                height: size.longestSide * .06,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: size.shortestSide*.04),
                  padding: EdgeInsets.symmetric(
                      vertical: size.longestSide * .025,
                      ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red.shade900),
                  child: Center(
                    child: Text(
                      "Confirm",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: size.shortestSide * .055,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
