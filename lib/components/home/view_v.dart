// Step 10: create a layout body app

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class View_V extends StatefulWidget {
  const View_V({super.key});

  @override
  State<View_V> createState() => _View_VState();
}

class _View_VState extends State<View_V> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40, // ความสูงของ AppBar
        leading: IconButton(
          icon: const Icon(IconlyLight.arrow_left_square),
          onPressed: () {
            Navigator.pop(context, true); // กลับไปยังหน้าก่อนหน้า
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildColoredBox(Colors.red, "กล่องที่ 1"),
                  _buildColoredBox(Colors.blue, "กล่องที่ 2"),
                  _buildColoredBox(Colors.yellow, "กล่องที่ 3"),
                  _buildColoredBox(Colors.green, "กล่องที่ 4"),
                  _buildColoredBox(Colors.pink, "กล่องที่ 5"),
                  _buildColoredBox(Colors.black, "กล่องที่ 6"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildColoredBox(Color color, String text) {
    return Container(
      height: 200, // ความสูงของกล่อง
      margin: const EdgeInsets.all(8), // ระยะห่างระหว่างกล่อง
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8), // มุมโค้งมน
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
