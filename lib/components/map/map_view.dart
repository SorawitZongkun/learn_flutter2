// Step 6: create app bar (menubar)
import 'package:flutter/material.dart';

class Map_View extends StatefulWidget {
  const Map_View({super.key});

  @override
  State<Map_View> createState() => _Map_ViewState();
}

class _Map_ViewState extends State<Map_View> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Map Page", style: TextStyle(fontSize: 24)),
    );
  }
}
