// Step 6: create app bar (menubar)

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:my_project/components/map/map_view.dart';

// Step 7: create sidebar menu
import 'dart:io';

class Map extends StatelessWidget {
  // const Map({super.key});

  // Step 7: create sidebar menu
  // แก้ปัญหากดปุ่ม onpress บน StatelessWidget แล้ว drawer ไม่ทำงาน
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: buildAppBar(context),
      body: const Map_View(),
      // Step 7: create sidebar menu
      drawer: Drawer(
        elevation: 10.0, // เพิ่มเงาให้ drawer
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text("Code Project"),
              accountEmail: const Text("เรียนรู้การเขียน Code"),
              decoration: const BoxDecoration(color: Colors.orange),
              currentAccountPicture: Container(
                child: const Image(
                  image: AssetImage('./android/assets/image/app_screen.png'),
                ),
              ),
            ),
            ListTile(
              title: const Text("ตั้งค่า"),
              onTap: () {
                Navigator.pop(context); // ปิด  drawer (ถอยหลัง 1 ค่า)
              },
              leading: const Icon(IconlyBold.setting),
              trailing: const Icon(IconlyLight.arrow_right_circle),
            ),
            const Divider(height: 10), // เส้นแบ่งระหว่างรายการ
            ListTile(
              title: const Text("เกี่ยวกับเรา"),
              onTap: () {
                Navigator.pop(context); // ปิด  drawer (ถอยหลัง 1 ค่า)
              },
              leading: const Icon(IconlyBold.star),
              trailing: const Icon(IconlyLight.arrow_right_circle),
            ),
            const Divider(height: 10), // เส้นแบ่งระหว่างรายการ
            ListTile(
              title: const Text("ออกจากระบบ"),
              onTap: () {
                exit(0); // ออกจากแอปพลิเคชัน
              },
              leading: const Icon(IconlyBold.logout),
              trailing: const Icon(IconlyLight.arrow_right_circle),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(IconlyBold.category),
        color: Colors.white,
        // Step 7: create sidebar menu
        onPressed: () => _scaffoldKey.currentState?.openDrawer(), // เปิด drawer
      ),
      centerTitle: true,
      title: const Text(
        "Map",
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.zero, // ด้านบนซ้าย
          topRight: Radius.zero, // ด้านบนขวา
          bottomLeft: Radius.circular(30), // ด้านล่างซ้าย
          bottomRight: Radius.circular(30), // ด้านล่างขวา
        ),
      ),
      backgroundColor: Colors.orange,
      actions: [
        IconButton(
          onPressed: () => (),
          icon: const Icon(IconlyBold.logout),
          color: Colors.white,
        ),
      ],
    );
  }
}
