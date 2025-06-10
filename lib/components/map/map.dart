// Step 6: create app bar (menubar)

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:my_project/components/map/map_view.dart';

class Map extends StatelessWidget {
  const Map({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(context), body: const Map_View());
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
