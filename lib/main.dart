import 'package:flutter/material.dart';
import 'package:my_project/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Step 6: create app bar (menubar)
      debugShowCheckedModeBanner: false, // ปิด tag debug

      home: FirstScreen(),
    );
  }
}
