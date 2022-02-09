//adb connect localhost:21503
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_apps/resetpass.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: resetPassword(),
    );
  }
}

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}
