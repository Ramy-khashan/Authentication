import 'package:flutter/material.dart';

import '../../classes/validation.dart';
import '../../component/button.dart';
import '../../component/textfielditem.dart';
import '../signin/view.dart';
import '../vertify/viem.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

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
              Text("Register",
                  style: TextStyle(
                    letterSpacing: 1,
                      fontSize: size.shortestSide * .08,
                      fontWeight: FontWeight.w700,
                    fontFamily: "head"
                  ),
                  textAlign: TextAlign.center),
              SizedBox(
                height: size.longestSide * .035,
              ),
              SizedBox(
                child: Row(
                  children: [
                    Expanded(
                        child: TextFieldItem(
                      size: size,
                      lable: "Frist Name",
                      valid: (val) => validation.userName(val),
                    )),
                    SizedBox(
                      width: size.shortestSide * .05,
                    ),
                    Expanded(
                        child: TextFieldItem(
                      size: size,
                      lable: "Last Name",
                      valid: (val) => validation.userName(val),
                    )),
                  ],
                ),
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
                head: "Registers",
                onTap: () {
                  if (validation.formKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VertifiyScreen()));
                  }
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
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
