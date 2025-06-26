import 'package:flutter/material.dart';
import 'package:my_project/first_screen.dart';

// Step 13: for check firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// Step 13: for check firebase
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Step 6: create app bar (menubar)
      debugShowCheckedModeBanner: false, // ปิด tag debug

      home: FirstScreen(),
    );
  }
}
