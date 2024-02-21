import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todos/routes.dart';
import 'package:todos/widgets/custom_button.dart';
import 'package:todos/widgets/custom_textfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 100,
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
            height: 30,
          ),
          const CustomTextField(
            hint: 'Name',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextField(
            hint: 'Address',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextField(
            hint: 'Contact',
          ),
          const SizedBox(
            height: 10,
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
            height: 10,
          ),
          const CustomTextField(
            hint: 'Confirm Password',
            obscureText: true,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            label: "Sign Up",
            onPressed: () {},
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
                    text: 'Already have an account?',
                  ),
                  TextSpan(
                      text: 'Login',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.toNamed(GetRoutes.login);
                        },
                      style: const TextStyle(
                        color: Color(0xff6b7afc),
                        fontWeight: FontWeight.w600,
                      ))
                ]),
            textHeightBehavior:
                const TextHeightBehavior(applyHeightToFirstAscent: false),
            softWrap: false,
          )
        ]),
      ),
    ));
  }
}
