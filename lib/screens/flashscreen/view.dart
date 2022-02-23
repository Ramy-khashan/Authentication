import 'dart:async';

import 'package:authentication/screens/register/view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'controller.dart';

class FlashScreen extends StatefulWidget {
  FlashScreen({Key? key}) : super(key: key);

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  final controller = FlashController();
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 12), () {
      print(controller.isDone);
      setState(() {});
      controller.isDone = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.shortestSide * .04,
                vertical: size.longestSide * .02),
            child: Column(
              children: [
                Spacer(),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "Fint The Best Doctors For You\n\n",
                      style: TextStyle(fontSize: size.shortestSide * .09)),
                  TextSpan(
                      text:
                          "You will have full view of all Doctors in our app.\n",
                      style: TextStyle(fontSize: size.shortestSide * .055)),
                ])),
                Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()),
                          (route) => false);
                    },
                    child: Container(
                      width: size.shortestSide * .17,
                      height: size.longestSide * .1,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(25)),
                      child: const Center(
                          child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      )),
                    ),
                  ),
                )
              ],
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 1700),
            height:
                controller.isDone ? size.longestSide * .58 : size.longestSide,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: controller.isDone
                    ? const BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))
                    : null),
            child: Center(
              child: Lottie.asset('images/doctor.json',
                  fit: BoxFit.fill, animate: !controller.isDone),
            ),
          ),
        ],
      ),
    );
  }
}
