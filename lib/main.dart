import 'package:flutter/material.dart'; // استورد مكتبة Flutter اللي فيها أدوات تصميم الواجهات

import 'pages/language_page.dart';

void main() {
  // الفنكشن الأساسية اللي يبدأ منها تشغيل التطبيق
  runApp(const MyApp()); // شغّل التطبيق MyApp
}

class MyApp extends StatelessWidget {
  // أنشأنا class اسمه MyApp وخليناه يورث من class موجود في مكتبة Flutter اسمه StatelessWidget،
  // والـ StatelessWidget بدوره يرث من Widget.
  // نستخدمه لما الـ Widget ما يحتاج يحتفظ بقيمة متغيرة ويعيد بناء نفسه بسبب تغيرها.

  const MyApp({super.key}); // Constructor.

  @override
  Widget build(BuildContext context) {
    //build ميثود بترجع قيمة من نوع Widget
    return MaterialApp(
      //MaterialApp هي Widget لأنها وارثة من class Widget
      debugShowCheckedModeBanner:
          false, // اخفي علامة DEBUG من الشاشة، لما يكون true تبين
      home: const LanguagePage(), //// أول صفحة تظهر لما التطبيق يشتغل تنادي على class اسمه LanguagePage() احنا عملناه
    );
  }
}

class EnglishPage extends StatelessWidget {
  const EnglishPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('English Page')));
  }
}

class ArabicPage extends StatelessWidget {
  const ArabicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('الصفحة العربية')));
  }
}
