import 'package:flutter/material.dart';

class TextFieldItem extends StatelessWidget {
  const TextFieldItem(
      {this.valid,
      this.isPassword = false,
      this.isSecure,
      this.onShow,
      this.lable,
      this.size,
      Key? key})
      : super(key: key);
  final Size? size;
  final bool? isPassword;
  final String? lable;
  final bool? isSecure;
  final Function()? onShow;
  final Function(dynamic val)? valid;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size!.longestSide * .015),
      child: TextFormField(
        obscureText: isPassword! ? isSecure! : false,
        validator: (val) => valid!(val),
        decoration: InputDecoration(
            suffixIcon: isPassword!
                ? IconButton(
                    onPressed: onShow,
                    icon: isSecure!
                        ? Icon(Icons.visibility_off_rounded)
                        : Icon(Icons.visibility_rounded))
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(
                color: Colors.teal,
              ),
            ),
            label: Text(lable!),
            labelStyle: TextStyle(fontSize: size!.shortestSide * .045)),
      ),
    );
  }
}
