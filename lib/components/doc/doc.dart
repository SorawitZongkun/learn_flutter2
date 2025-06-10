// Step 6: create app bar (menubar)

import 'package:flutter/material.dart';
import 'package:my_project/components/doc/doc_view.dart';
import 'package:iconly/iconly.dart';

class Doc extends StatelessWidget {
  const Doc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(context), body: const Doc_View());
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
        "Document",
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
