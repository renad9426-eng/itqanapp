import 'package:flutter/material.dart';
import 'package:itqanapp/pages/Arabic/arabic_login_page.dart';

class ArabicWelcomePage extends StatelessWidget {
  const ArabicWelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'مرحبا\nبكم\nفي\nإتقان',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),

            const SizedBox(height: 50), //صندوق فارغ لعمل مسافة

            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ArabicLoginPage(),
                  ),
                );
              },

              child: const Text(
                'استمر',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
