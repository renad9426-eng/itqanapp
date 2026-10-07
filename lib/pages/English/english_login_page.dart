import 'package:flutter/material.dart';
import 'package:itqanapp/pages/English/english_email_otp_page.dart';

class EnglishLoginPage extends StatefulWidget {
  const EnglishLoginPage({super.key});

  @override
  State<EnglishLoginPage> createState() => _EnglishLoginPageState();
}

class _EnglishLoginPageState extends State<EnglishLoginPage> {
  final TextEditingController usernameController = TextEditingController();

  String? usernameError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Login',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 100),

            SizedBox(
              width: 500,
              child: TextField(
                //obscureText: true, نستخدمها لو  في باسوورد
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username', //ممكن نستخدم hintText
                  border: OutlineInputBorder(),
                  errorText: usernameError,
                ),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: 300,
              height: 50,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  if (usernameController.text.trim().isEmpty) {
                    setState(() {
                      usernameError = 'Please enter your username';
                    });
                  } else {
                    setState(() {
                      usernameError = null;
                    });

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EnglishEmailOtpPage(),
                      ),
                    );
                  }
                },

                child: const Text(
                  'Log in',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
