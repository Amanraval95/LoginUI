import 'package:flutter/material.dart';
import 'package:login_signup/Pages/Resuable_widget.dart';
import 'package:login_signup/Pages/welcome.dart';
import 'package:login_signup/SignUp/SignUp.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  build(BuildContext context) {
    return CustomCard(
      title: "Login",
      children: [
        const CustomTextField(lable: "Email", hint: "Enter Email"),
        const SizedBox(height: 20),
        const CustomTextField(lable: "Password", hint: "Enter password"),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 10,
            backgroundColor: Colors.black,
            fixedSize: Size(130, 18),
          ),

          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => welcome()),
          ),
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an Account"),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => signup()),
              ),
              child: Text("SignUp"),
            ),
          ],
        ),
      ],
    );
  }
}
