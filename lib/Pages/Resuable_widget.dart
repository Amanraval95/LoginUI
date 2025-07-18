import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String lable;
  final String hint;
  final bool obscureText;
  const CustomTextField({
    super.key,
    required this.lable,
    required this.hint,
    this.obscureText = false,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      cursorColor: Colors.white,
      decoration: InputDecoration(hintText: hint, labelText: lable),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const CustomCard({super.key, required this.title, this.children = const []});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shadowColor: Colors.blue[900],
                color: Colors.black87,
                elevation: 19,
                surfaceTintColor: Colors.white24,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 50),
                      ...children,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
