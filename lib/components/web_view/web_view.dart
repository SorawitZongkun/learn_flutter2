// Step 11: Create a Route Page And Navigation App
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class Web_View extends StatefulWidget {
  final String web; // รับค่าเข้ามา
  const Web_View({super.key, required this.web});

  @override
  State<Web_View> createState() => _Web_ViewState();
}

class _Web_ViewState extends State<Web_View> {
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
      body: Center(
        child: Text(widget.web, style: const TextStyle(fontSize: 24)),
      ),
    );
  }
}
