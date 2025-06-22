// Step 10: create a layout body app
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

// Step 11: Create a Route Page And Navigation App
import 'package:my_project/components/constants/string_web.dart';
import 'package:my_project/components/web_view/web_view.dart';

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
            // Step 11: Create a Route Page And Navigation App
            GestureDetector(
              onTap:
                  () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => Web_View(web: Strings.web_flutter),
                      ),
                    ),
                  },
              child: Container(
                margin: const EdgeInsets.all(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 20),
                    Image.asset(
                      './android/assets/image/img1.png',
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Flutter",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap:
                  () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Web_View(web: Strings.web_lib),
                      ),
                    ),
                  },
              child: Container(
                margin: const EdgeInsets.all(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 20),
                    Image.asset(
                      './android/assets/image/img2.png',
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Pub",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.lightBlue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap:
                  () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Web_View(web: Strings.youtube),
                      ),
                    ),
                  },
              child: Container(
                margin: const EdgeInsets.all(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 20),
                    Image.asset(
                      './android/assets/image/img3.png',
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Youtube",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap:
                  () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Web_View(web: Strings.facebook),
                      ),
                    ),
                  },
              child: Container(
                margin: const EdgeInsets.all(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 20),
                    Image.asset(
                      './android/assets/image/img4.png',
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Facebook",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue.shade400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap:
                  () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Web_View(web: Strings.tiktok),
                      ),
                    ),
                  },
              child: Container(
                margin: const EdgeInsets.all(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 20),
                    Image.asset(
                      './android/assets/image/img5.png',
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Tiktok",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap:
                  () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Web_View(web: Strings.line),
                      ),
                    ),
                  },
              child: Container(
                margin: const EdgeInsets.all(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 20),
                    Image.asset(
                      './android/assets/image/img6.png',
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Line",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
