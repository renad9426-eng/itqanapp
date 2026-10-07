import 'package:flutter/material.dart';
import 'package:itqanapp/pages/English/english_welcome_page.dart';
import 'package:itqanapp/pages/Arabic/arabic_welcome_page.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold وارثة من Widget، وتعطينا الهيكل الأساسي للصفحة، وفيها properties مثل body, appBar, drawer وغيرها
      backgroundColor: Colors.white, //خاصية داخل Scaffold لتحديد لون الخلفية، نستخدم فيها كلاس Colors جاهز من Flutter فيه ألوان جاهزة
      body: Center(
        // body خاصية داخل Scaffold للمحتوى الأساسي للصفحة، وأعطيناها Widget من نوع Center عشان يوسّط المحتوى
        child: Row(
          // child خاصية داخل Center، وأعطيناها Row عشان يكون هو المحتوى اللي يتم توسيطه بشكل أفقي
          mainAxisSize: MainAxisSize.min, // خاصية داخل Row تخليه ياخذ مساحة على قد العناصر اللي داخله فقط بدل ما يتمدد بعرض الشاشة كلها.
          children: [
            // خاصية داخل Row تستقبل List من Widgets لأنه عندنا أكثر من عنصر
            //English language button
            TextButton(
              // Widget جاهز من Flutter لعمل زر نصي،في أنواع Buttons مختلفة مثل: ElevatedButton، OutlinedButton
              onPressed: () {
                //function تنفذ لما المستخدم يضغط الزر
                Navigator.push(
                  //Navigator مسؤول عن التنقل بين الصفحات، وpush يضيف صفحة جديدة فوق الحالية مثل الstack
                  context, //نفسه اللي بالparameter
                  MaterialPageRoute //نحدد من خلالها الصفحة الجديدة اللي بدنا ننتقل إلها
                  (
                    builder: (context) => const EnglishWelcomePage(), //هون فعليًا نقوله: الصفحة الجديدة هي EnglishPage.
                  ),
                );
              },
              //^معناها تقريبًا: يا Navigator، أضف صفحة جديدة فوق الحالية، ومن خلال MaterialPageRoute رح أحدد لك أي صفحة.

              child: const Text(
                // المحتوى الموجود داخل الزر هو Text
                'English', // النص اللي يظهر على الزر
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ), //لون وحجم الخط
              ),
            ),

            // العمود اللي بين العربي والانجليزي
            const Text(
              '|',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),

            //Arabic language button
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ArabicWelcomePage(),
                  ),
                );
              },
              child: const Text(
                'عربي',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
