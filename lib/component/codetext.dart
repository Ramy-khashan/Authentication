import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CodeTextItem extends StatelessWidget {
  final TextInputAction? move;
  final Size? size;

  const CodeTextItem({this.size,this.move,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),

      ),
      width: size!.shortestSide * .13,
      child: TextField(
        onChanged: (String v) =>
            FocusScope.of(context).focusInDirection(TraversalDirection.right),
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ],
        //      textInputAction: move,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
