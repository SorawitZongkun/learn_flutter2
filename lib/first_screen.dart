// Step 2: app screen
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  // อะไรที่อยากให้ทำงานก่อนเพื่อนให้ใส่ไว้ในนี้
  void initState() {
    super.initState();

    // เมื่อครบเวลาจะทำการกดปุ่มโดยอัตโนมัติ
    Timer(
      const Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SecondPage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orange, Colors.pink],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(0.6, 0.5),
          // tileMode: TileMode.clamp,
          // tileMode: TileMode.decal,
          // tileMode: TileMode.mirror,
          tileMode: TileMode.repeated,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('./android/assets/image/app_screen.png', height: 250),
          const SizedBox(height: 50),
          const SpinKitSpinningLines(color: Colors.orange),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      body: const Center(
        child: Text(
          'This is the second page.',
          style: TextStyle(
            fontSize: 20,
            color: Colors.amberAccent,
            fontFamily: "ALike",
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
