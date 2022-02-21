import 'package:flutter/material.dart';

import '../../classes/validation.dart';
import '../../component/button.dart';
import '../../component/textfielditem.dart';
import '../register/view.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  Validation validation = Validation();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Form(
        key: validation.formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: size.shortestSide * .05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: size.longestSide * .15,
              ),
              Text("Sign In",
                  style: TextStyle(
                    fontSize: size.shortestSide * .08,
                    fontWeight: FontWeight.w700,
                    fontFamily: "head",
                    letterSpacing: 1,
                  ),
                  textAlign: TextAlign.center),
              SizedBox(
                height: size.longestSide * .035,
              ),
              TextFieldItem(
                size: size,
                lable: "Email",
                valid: (val) => validation.email(val),
              ),
              TextFieldItem(
                size: size,
                lable: "Password",
                valid: (val) => validation.password(val),
              ),
              SizedBox(
                height: size.longestSide * .035,
              ),
              ButtonItem(
                size: size,
                head: "Sign In",
                onTap: () {
                  if (validation.formKey.currentState!.validate()) {}
                },
                color: Colors.red.shade200,
              ),
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.white)),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.shortestSide * .02),
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
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterScreen()));
                            },
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  fontSize: size.shortestSide * .045,
                                  color: Colors.tealAccent),
                            )),
                      ),
                    ]),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: size.longestSide * .02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
