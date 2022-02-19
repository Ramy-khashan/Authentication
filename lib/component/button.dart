import 'package:flutter/material.dart';

class ButtonItem extends StatelessWidget {
  final Size? size;

  final Function()? onTap;

  final String? head;

  final bool? isWithIcon;
  final Color? color;

  const ButtonItem(
      {this.head, this.color,this.isWithIcon=false, this.onTap, this.size, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: size!.longestSide * .02),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: color),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          isWithIcon!?  Icon(
              Icons.golf_course_outlined,
              color: Colors.black,
            ):Text(""),
            SizedBox(
              width: size!.shortestSide * .02,
            ),
            Text(
              head!,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size!.shortestSide * .055,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
