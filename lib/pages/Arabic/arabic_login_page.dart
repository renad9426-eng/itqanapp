import 'package:flutter/material.dart';
import 'package:itqanapp/pages/Arabic/arabic_email_otp_page.dart';

class ArabicLoginPage extends StatefulWidget {
  const ArabicLoginPage({super.key});

  @override
  State<ArabicLoginPage> createState() => _ArabicLoginPageState();
}

class _ArabicLoginPageState extends State<ArabicLoginPage> {
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
              'تسجيل الدخول',
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
                controller: usernameController,
                //obscureText: true, نستخدمها لو  في باسوورد
                decoration: InputDecoration(
                  labelText: 'اسم المستخدم', //ممكن نستخدم hintText
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
                      usernameError = 'قم بإدخال اسم المستخدم';
                    });
                  } else {
                    setState(() {
                      usernameError = null;
                    });

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ArabicEmailOtpPage(),
                      ),
                    );
                  }
                },

                child: const Text(
                  'سجل الدخول',
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
