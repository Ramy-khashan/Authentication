import 'package:flutter/material.dart';

import '../../component/button.dart';
import '../../component/textfielditem.dart';
import '../signin/view.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: size.shortestSide * .05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: size.longestSide * .15,
            ),
            Text("Register",
                style: TextStyle(
                  fontSize: size.shortestSide * .07,
                ),
                textAlign: TextAlign.center), SizedBox(
              height: size.longestSide * .035,
            ),
            SizedBox(
              child: Row(
                children: [
                  Expanded(
                      child: TextFieldItem(
                        size: size,
                        lable: "Frist Name",
                      )),
                  SizedBox(
                    width: size.shortestSide * .05,
                  ),
                  Expanded(
                      child: TextFieldItem(
                        size: size,
                        lable: "Last Name",
                      )),
                ],
              ),
            ),
            TextFieldItem(
              size: size,
              lable: "Email",
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
              head: "Registers",
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
              head: "Register With Google",
              onTap: () {},
              isWithIcon: true,
              color: Colors.white,
            ),
            SizedBox(
              height: size.longestSide * .08,
            ),
            Text.rich(
              TextSpan(
                  style: TextStyle(fontSize: size.shortestSide * .045),
                  children: [
                    const TextSpan(text: "Already Register?\t"),
                    WidgetSpan(
                      child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => SignInScreen()));
                          },
                          child: Text(
                            "Sign In",
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
