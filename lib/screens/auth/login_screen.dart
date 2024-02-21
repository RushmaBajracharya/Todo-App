import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todos/routes.dart';
import 'package:todos/widgets/custom_button.dart';
import 'package:todos/widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 120,
          ),
          const Align(
            alignment: Alignment.center,
            child: Text('My TODO',
                style: TextStyle(
                    fontSize: 54,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w600)),
          ),
          const SizedBox(
            height: 50,
          ),
          const CustomTextField(
            hint: 'Email',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextField(
            hint: 'Password',
            obscureText: true,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            label: "Login",
            onPressed: () {
              Get.offAllNamed(GetRoutes.home);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Text.rich(
            TextSpan(
                style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xff949494),
                ),
                children: [
                  const TextSpan(
                    text: 'Don\'t have an account?',
                  ),
                  TextSpan(
                      text: 'Sign up',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.toNamed(GetRoutes.signup);
                        },
                      style: const TextStyle(
                        color: Color(0xff6b7afc),
                        fontWeight: FontWeight.w600,
                      ))
                ]),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            softWrap: false,
          )
        ]),
      ),
    ));
  }
}
