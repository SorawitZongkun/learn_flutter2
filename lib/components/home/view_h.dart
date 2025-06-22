// Step 10: create a layout body app
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class View_H extends StatefulWidget {
  const View_H({super.key});

  @override
  State<View_H> createState() => _View_HState();
}

class _View_HState extends State<View_H> {
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2, // จำนวนคอลัมน์ใน GridView
          crossAxisSpacing: 8, // ระยะห่างระหว่างคอลัมน์
          mainAxisSpacing: 8, // ระยะห่างระหว่างแถว
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
    );
  }

  Widget _buildColoredBox(Color color, String text) {
    return Container(
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
