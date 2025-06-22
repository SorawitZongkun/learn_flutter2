// Step 6: create app bar (menubar)
import 'package:flutter/material.dart';

// Step 10: create a layout body app
import 'package:iconly/iconly.dart';
import 'package:my_project/components/home/view_h.dart';
import 'package:my_project/components/home/view_v.dart';

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
                  "แนวนอน",
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
                  Container(
                    width: 150,
                    height: 180,
                    margin: const EdgeInsets.all(8), // ระยะห่างระหว่างกล่อง
                    color: Colors.red, // สีพื้นหลังของกล่อง
                    child: const Center(
                      child: Text("กล่องที่ 1"),
                    ), // ข้อความในกล่อง
                  ),
                  Container(
                    width: 150,
                    height: 180,
                    margin: const EdgeInsets.all(8), // ระยะห่างระหว่างกล่อง
                    color: Colors.blue, // สีพื้นหลังของกล่อง
                    child: const Center(
                      child: Text("กล่องที่ 2"),
                    ), // ข้อความในกล่อง
                  ),
                  Container(
                    width: 150,
                    height: 180,
                    margin: const EdgeInsets.all(8), // ระยะห่างระหว่างกล่อง
                    color: Colors.yellow, // สีพื้นหลังของกล่อง
                    child: const Center(
                      child: Text("กล่องที่ 3"),
                    ), // ข้อความในกล่อง
                  ),
                  Container(
                    width: 150,
                    height: 180,
                    margin: const EdgeInsets.all(8), // ระยะห่างระหว่างกล่อง
                    color: Colors.green, // สีพื้นหลังของกล่อง
                    child: const Center(
                      child: Text("กล่องที่ 4"),
                    ), // ข้อความในกล่อง
                  ),
                  Container(
                    width: 150,
                    height: 180,
                    margin: const EdgeInsets.all(8), // ระยะห่างระหว่างกล่อง
                    color: Colors.pink, // สีพื้นหลังของกล่อง
                    child: const Center(
                      child: Text("กล่องที่ 5"),
                    ), // ข้อความในกล่อง
                  ),
                  Container(
                    width: 150,
                    height: 180,
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
