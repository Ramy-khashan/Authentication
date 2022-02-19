import 'package:flutter/material.dart';

class AskingButtonItem extends StatelessWidget {
  const AskingButtonItem({this.size,Key? key}) : super(key: key);
final Size?size;
  @override
  Widget build(BuildContext context) {
    return  Text.rich(TextSpan(style: TextStyle(fontSize: size!.shortestSide*.045),children: [
      const TextSpan(text: "Already Register?\t"),
      WidgetSpan(
        child:  InkWell(onTap: (){},child:  Text("Sign In",style: TextStyle(fontSize: size!.shortestSide*.045,color: Colors.tealAccent),)),),
    ]),textAlign: TextAlign.center,);
  }
}
