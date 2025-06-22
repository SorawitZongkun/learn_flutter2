// Step 6: create app bar (menubar)
import 'package:flutter/material.dart';

// Step 10: create a layout body app
import 'package:iconly/iconly.dart';
import 'package:my_project/components/home/view_h.dart';
import 'package:my_project/components/home/view_v.dart';

// Step 11: Create a Route Page And Navigation App
import 'package:my_project/components/constants/string_web.dart';
import 'package:my_project/components/web_view/web_view.dart';

class Home_View extends StatefulWidget {
  const Home_View({super.key});

  @override
  State<Home_View> createState() => _Home_ViewState();
}

class _Home_ViewState extends State<Home_View> {
  @override
  Widget build(BuildContext context) {
    // Step 10: create a layout body app
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ), // ค่าระยะห่างของ padding
            child: Row(
              children: [
                const Text(
                  "เว็บแนะนำ",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Alike",
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const Spacer(), // ดันให้ชิดขวา
                IconButton(
                  icon: const Icon(IconlyBroken.more_square), // ไอคอนเมนู
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const View_H()),
                    );
                  }, // ปุ่มเมนู
                ),
              ],
            ),
          ),
          // เนื้อหาเลื่อนได้ในแนวนอน
          Container(
            height: 200,
            // เลื่อนดูเนื้อหาได้
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal, // กำหนดทิศทางการเลื่อนในแนวนอน
              child: Row(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // จัดแนวในแนวขวาง ด้านบน
                mainAxisAlignment:
                    MainAxisAlignment.start, // จัดแนวในแนวหลัก ด้านบน
                children: [
                  // Step 11: Create a Route Page And Navigation App
                  GestureDetector(
                    onTap:
                        () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      Web_View(web: Strings.web_flutter),
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
                              builder:
                                  (context) => Web_View(web: Strings.web_lib),
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
                              builder:
                                  (context) => Web_View(web: Strings.youtube),
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
                              builder:
                                  (context) => Web_View(web: Strings.facebook),
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
                              builder:
                                  (context) => Web_View(web: Strings.tiktok),
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
          ),

          // เนื้อหาเลื่อนได้ในแนวตั้ง
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ), // ค่าระยะห่างของ padding
            child: Row(
              children: [
                const Text(
                  "แนวตั้ง",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Alike",
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const Spacer(), // ดันให้ชิดขวา
                IconButton(
                  icon: const Icon(IconlyBroken.more_square), // ไอคอนเมนู
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const View_V()),
                    );
                  }, // ปุ่มเมนู
                ),
              ],
            ),
          ),

          // เนื้อหาเลื่อนได้ในแนวตั้ง
          Expanded(
            // เลื่อนดูเนื้อหาได้
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical, // กำหนดทิศทางการเลื่อนในแนวตั้ง
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // จัดแนวในแนวขวาง ด้านบน
                mainAxisAlignment:
                    MainAxisAlignment.start, // จัดแนวในแนวหลัก ด้านบน
                children: [
                  Container(
                    width: double.infinity, // กำหนดความกว้างเต็มที่
                    height: 200,
                    margin: const EdgeInsets.all(8), // ระยะห่างระหว่างกล่อง
                    color: Colors.red, // สีพื้นหลังของกล่อง
                    child: const Center(
                      child: Text("กล่องที่ 1"),
                    ), // ข้อความในกล่อง
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    margin: const EdgeInsets.all(8), // ระยะห่างระหว่างกล่อง
                    color: Colors.blue, // สีพื้นหลังของกล่อง
                    child: const Center(
                      child: Text("กล่องที่ 2"),
                    ), // ข้อความในกล่อง
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    margin: const EdgeInsets.all(8), // ระยะห่างระหว่างกล่อง
                    color: Colors.yellow, // สีพื้นหลังของกล่อง
                    child: const Center(
                      child: Text("กล่องที่ 3"),
                    ), // ข้อความในกล่อง
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    margin: const EdgeInsets.all(8), // ระยะห่างระหว่างกล่อง
                    color: Colors.green, // สีพื้นหลังของกล่อง
                    child: const Center(
                      child: Text("กล่องที่ 4"),
                    ), // ข้อความในกล่อง
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    margin: const EdgeInsets.all(8), // ระยะห่างระหว่างกล่อง
                    color: Colors.pink, // สีพื้นหลังของกล่อง
                    child: const Center(
                      child: Text("กล่องที่ 5"),
                    ), // ข้อความในกล่อง
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    margin: const EdgeInsets.all(8), // ระยะห่างระหว่างกล่อง
                    color: Colors.black, // สีพื้นหลังของกล่อง
                    child: const Center(
                      child: Text("กล่องที่ 6"),
                    ), // ข้อความในกล่อง
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
