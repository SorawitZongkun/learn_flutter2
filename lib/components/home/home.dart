// Step 6: create app bar (menubar)

import 'package:flutter/material.dart';
import 'package:my_project/components/home/home_view.dart';
import 'package:iconly/iconly.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(context), body: Home_View());
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => (),
        icon: const Icon(IconlyBold.category),
        color: Colors.white,
      ),
      centerTitle: true,
      title: const Text(
        "Home",
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
          icon: Icon(IconlyBold.logout),
          color: Colors.white,
        ),
      ],
    );
  }
}
