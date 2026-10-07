import 'package:flutter/material.dart';
import 'package:itqanapp/pages/English/english_login_page.dart';

class EnglishWelcomePage extends StatelessWidget {
  const EnglishWelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Welcome\nTo\nItqan',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),

            const SizedBox(height: 50), //صندوق فارغ لعمل مسافة

            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EnglishLoginPage()),
                );
              },

              child: const Text(
                'Continue',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
