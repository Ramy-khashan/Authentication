import 'package:authentication/screens/register/view.dart';
import 'package:flutter/material.dart';

import 'screens/flashscreen/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: FlashScreen(),
    );
  }
}
