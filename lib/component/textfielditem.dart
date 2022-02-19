import 'package:flutter/material.dart';

class TextFieldItem extends StatelessWidget {
  const TextFieldItem({this.lable,this.size, Key? key}) : super(key: key);
  final Size? size;
final String?lable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
         vertical: size!.longestSide * .015),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(
                color: Colors.teal,
              ),

            ),label: Text(lable!),
            labelStyle: TextStyle(fontSize: size!.shortestSide*.055)),
      ),
    );
  }
}
