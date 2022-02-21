import 'package:flutter/material.dart';

class TextFieldItem extends StatelessWidget {
  const TextFieldItem({this.valid,this.lable,this.size, Key? key}) : super(key: key);
  final Size? size;
final String?lable;
final Function(dynamic val)?valid;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
         vertical: size!.longestSide * .015),
      child: TextFormField(
        validator: (val) => valid!(val),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(
                color: Colors.teal,
              ),

            ),label: Text(lable!),
            labelStyle: TextStyle(fontSize: size!.shortestSide*.045)),
      ),
    );
  }
}
