// Step 6: create app bar (menubar)
import 'package:flutter/material.dart';

class Home_View extends StatefulWidget {
  const Home_View({super.key});

  @override
  State<Home_View> createState() => _Home_ViewState();
}

class _Home_ViewState extends State<Home_View> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Home Page", style: TextStyle(fontSize: 24)),
    );
  }
}
