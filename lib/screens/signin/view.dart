import 'package:flutter/material.dart';

import '../../component/button.dart';
import '../../component/textfielditem.dart';
import '../register/view.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: size.shortestSide * .05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: size.longestSide * .15,
            ),
            Text("Sign In",
                style: TextStyle(
                  fontSize: size.shortestSide * .07,
                ),
                textAlign: TextAlign.center),
            SizedBox(
              height: size.longestSide * .035,
            ),

            TextFieldItem(
              size: size,lable: "Email",
            ),
            TextFieldItem(
              size: size,
              lable: "Password",
            ),
            SizedBox(
              height: size.longestSide * .035,
            ),
            ButtonItem(
              size: size,
              head: "Sign In",
              onTap: () {},
              color: Colors.red.shade200,
            ),
            Row(
              children: [
                Expanded(child: Divider(color: Colors.white)),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: size.shortestSide * .02),
                  child: Text(
                    "OR",
                    style: TextStyle(fontSize: size.shortestSide * .053),
                  ),
                ),
                Expanded(
                    child: Divider(
                  color: Colors.white,
                  height: size.longestSide * .08,
                ))
              ],
            ),
            ButtonItem(
              size: size,
              head: "Sign In With Google",
              onTap: () {},
              isWithIcon: true,
              color: Colors.white,
            ),
            SizedBox(
              height: size.longestSide * .2,
            ),
            Text.rich(
              TextSpan(
                  style: TextStyle(fontSize: size.shortestSide * .045),
                  children: [
                    const TextSpan(text: "Don't have an account?\t"),
                    WidgetSpan(
                      child: InkWell(
                          onTap: () {    Navigator.push(context, MaterialPageRoute(
                              builder: (context) => RegisterScreen()));},
                          child: Text(
                            "Register",
                            style: TextStyle(
                                fontSize: size.shortestSide * .045,
                                color: Colors.tealAccent),
                          )),
                    ),
                  ]),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
