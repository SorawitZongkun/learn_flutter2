// Step 5: navigation bar
import 'package:flutter/material.dart';

import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';

import 'package:iconly/iconly.dart';

// Step 6: create app bar (menubar)
import 'package:my_project/components/home/home.dart';
import 'package:my_project/components/doc/doc.dart';
import 'package:my_project/components/map/map.dart';
import 'package:my_project/components/video/video.dart';

class Main_Menu extends StatefulWidget {
  const Main_Menu({super.key});

  @override
  State<Main_Menu> createState() => _Main_MenuState();
}

class _Main_MenuState extends State<Main_Menu> {
  var _selectedIdex = 0; // หน้าเริ่มต้น

  // สร้างทั้งหมด 4 หน้า
  final List<Widget> _pages = [Home(), Doc(), Map(), Video()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIdex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIdex],
      bottomNavigationBar: CrystalNavigationBar(
        backgroundColor: Colors.orange,
        items: <CrystalNavigationBarItem>[
          // index = 0;
          CrystalNavigationBarItem(
            icon: IconlyBold.home,
            selectedColor: Colors.white, // โดนเลือกแล้วเป็นสีขาว
            unselectedIcon: IconlyLight.home, // เวลาไม่เลือก ให้โปร่งใส
            unselectedColor: Colors.black38,
          ),
          // index = 1;
          CrystalNavigationBarItem(
            icon: IconlyBold.document,
            selectedColor: Colors.white,
            unselectedIcon: IconlyLight.document,
            unselectedColor: Colors.black38,
          ),
          // index = 2;
          CrystalNavigationBarItem(
            icon: IconlyBold.video,
            selectedColor: Colors.white,
            unselectedIcon: IconlyLight.video,
            unselectedColor: Colors.black38,
          ),
          // index = 3;
          CrystalNavigationBarItem(
            icon: IconlyBold.location,
            selectedColor: Colors.white,
            unselectedIcon: IconlyLight.location,
            unselectedColor: Colors.black38,
          ),
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedIdex,
      ),
    );
  }
}
