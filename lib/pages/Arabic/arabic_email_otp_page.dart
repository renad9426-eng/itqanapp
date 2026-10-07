import 'package:flutter/material.dart';
import 'package:itqanapp/main.dart';
import 'package:itqanapp/pages/Arabic/arabic_phone_otp_page.dart';
import 'package:pinput/pinput.dart'; //باكج خارجية حملناها استوردناها عشان نعمل الotp squares
import 'package:flutter/services.dart'; //مشان نمنع اليوزر يدخل اي شي عدا ارقام

class ArabicEmailOtpPage extends StatefulWidget {
  const ArabicEmailOtpPage({super.key});
  @override
  State<ArabicEmailOtpPage> createState() => _ArabicEmailOtpPageState();
}

class _ArabicEmailOtpPageState extends State<ArabicEmailOtpPage> {
  final TextEditingController otpController = TextEditingController();
  String? otpError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'أدخل الكود المرسل إلى البريد الإلكتروني التالي',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 70),

            Pinput(
              controller: otpController,
              length: 4,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              defaultPinTheme: PinTheme(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            if (otpError != null)
              Text(
                otpError!,
                style: const TextStyle(color: Colors.red, fontSize: 13),
              ),

            const SizedBox(height: 20),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ArabicPhoneOtpPage(), //هون فعليًا نقوله: الصفحة الجديدة هي EnglishPage.
                  ),
                );
              },

              child: const Text(
                'أرسِل إلى الرقم',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: 300,
              height: 50,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  if (otpController.text.length < 4) {
                    setState(() {
                      otpError = 'قم بإدخال الكود';
                    });
                  } else {
                    setState(() {
                      otpError = null;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ArabicPage(),
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
