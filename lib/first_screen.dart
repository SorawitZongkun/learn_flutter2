// Step 2: app screen
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:fluttertoast/fluttertoast.dart';

import 'package:my_project/main_menu.dart';

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
  }

  // Step 3: check internet connect or not?
  // https://pub.dev/packages/connectivity_plus
  // ใส่ async ให้รอ เพราะกว่ามือถือจะต่อเน็ตได้ มันไม่ได้ติดได้ในทันที
  Future<void> checkInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult.contains(ConnectivityResult.mobile)) {
      _showToast("Mobile network available.");
    } else if (connectivityResult.contains(ConnectivityResult.wifi)) {
      _showToast("Wi-fi network available.");
    } else if (connectivityResult.contains(ConnectivityResult.ethernet)) {
      _showToast("Ethernet (LAN) network available.");
    } else if (connectivityResult.contains(ConnectivityResult.vpn)) {
      _showToast("Vpn connection active.");
    } else if (connectivityResult.contains(ConnectivityResult.bluetooth)) {
      _showToast("Bluetooth connection active.");
    } else if (connectivityResult.contains(ConnectivityResult.other)) {
      _showToast("Other connection active.");
    } else if (connectivityResult.contains(ConnectivityResult.none)) {
      // _showToast("No available network.");
      setState(() {
        // setState เพื่อให้ทำงานทันที
        _showAlertDialog(context, "Error", "No available network.");
      });
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

  // Step 4: show alert with toast
  // เมื่อเขียน code เสร็จแล้ว ให้แสดงการเปิด/ปิด internet wifi กับ 5G โดยลากจากด้านบนมือถือ
  void _showToast(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.orange,
      textColor: Colors.white,
      fontSize: 12.0,
    );
    _timer();
  }

  // Step 4: show alert with toast
  void _timer() {
    // เมื่อครบเวลาจะทำการกดปุ่มโดยอัตโนมัติ
    Timer(
      const Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Main_Menu()),
      ),
    );
  }

  // Step 4: show alert with toast
  void _showAlertDialog(BuildContext context, String title, String msg) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontFamily: "Alike",
              fontWeight: FontWeight.w500,
            ),
          ),
          content: Text(msg),
          // SystemNavigator.pop คือ ถอยหลังกลับไป 1 ก้าว
          actions: <Widget>[
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(
                  Colors.orangeAccent,
                ),
              ),
              onPressed: () => SystemNavigator.pop(),
              child: const Text(
                "OK",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.amberAccent,
                  fontFamily: "Alike",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
