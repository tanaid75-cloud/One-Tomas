import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(30),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Image.asset(
              "assets/logo.png",
              height: 110,
            ),

            const SizedBox(height: 20),

            const Text(
              "Create an Account",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            buildField("Username"),
            buildField("Phone Number"),
            buildField("Address"),
            buildField("Password", password: true),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: (){},
              child: const Text("SIGN UP"),
            ),

          ],
        ),
      ),
    );
  }

  Widget buildField(String text,{bool password=false}){

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),

      child: TextField(
        obscureText: password,
        decoration: InputDecoration(
          hintText: text,
          filled: true,
          fillColor: Colors.blue.shade100,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );

  }

}