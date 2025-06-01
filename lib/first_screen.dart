// Step 2: app screen
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:connectivity_plus/connectivity_plus.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  // อะไรที่อยากให้ทำงานก่อนเพื่อนให้ใส่ไว้ในนี้
  void initState() {
    super.initState();

    // Step 3: check internet connect or not?
    checkInternetConnection();

    // เมื่อครบเวลาจะทำการกดปุ่มโดยอัตโนมัติ
    Timer(
      const Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SecondPage()),
      ),
    );
  }

  // Step 3: check internet connect or not?
  // https://pub.dev/packages/connectivity_plus
  // ใส่ async ให้รอ เพราะกว่ามือถือจะต่อเน็ตได้ มันไม่ได้ติดได้ในทันที
  Future<void> checkInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult.contains(ConnectivityResult.mobile)) {
      // Mobile network available.
      print("Mobile network available.");
    } else if (connectivityResult.contains(ConnectivityResult.wifi)) {
      // Wi-fi is available.
      // Note for Android:
      // When both mobile and Wi-Fi are turned on system will return Wi-Fi only as active network type
      print("Wi-fi network available.");
    } else if (connectivityResult.contains(ConnectivityResult.ethernet)) {
      // Ethernet connection available.
      print("Ethernet (LAN) network available.");
    } else if (connectivityResult.contains(ConnectivityResult.vpn)) {
      // Vpn connection active.
      // Note for iOS and macOS:
      // There is no separate network interface type for [vpn].
      // It returns [other] on any device (also simulator)
      print("Vpn connection active.");
    } else if (connectivityResult.contains(ConnectivityResult.bluetooth)) {
      // Bluetooth connection available.
      print("Bluetooth connection active.");
    } else if (connectivityResult.contains(ConnectivityResult.other)) {
      // Connected to a network which is not in the above mentioned networks.
      print("Other connection active.");
    } else if (connectivityResult.contains(ConnectivityResult.none)) {
      // No available network types
      print("No available network.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orange, Colors.pink],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(0.6, 0.5),
          // tileMode: TileMode.clamp,
          // tileMode: TileMode.decal,
          // tileMode: TileMode.mirror,
          tileMode: TileMode.repeated,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('./android/assets/image/app_screen.png', height: 250),
          const SizedBox(height: 50),
          const SpinKitSpinningLines(color: Colors.orange),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      body: const Center(
        child: Text(
          'This is the second page.',
          style: TextStyle(
            fontSize: 20,
            color: Colors.amberAccent,
            fontFamily: "ALike",
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
