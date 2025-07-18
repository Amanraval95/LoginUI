import 'package:flutter/material.dart';
import 'package:login_signup/Pages/Resuable_widget.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      title: "SignUp",
      children: [
        const CustomTextField(lable: "Name", hint: "Enter your Name"),
        const SizedBox(height: 20),
        const CustomTextField(lable: "Email", hint: "Enter Email"),
        const SizedBox(height: 20),
        const CustomTextField(lable: "Password", hint: "Enter password"),
        const SizedBox(height: 20),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text("Go Back"),
        ),
      ],
    );
  }
}
