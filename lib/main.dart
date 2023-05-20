import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:postgres_learn/src/view/screens/create_account_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Your App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  CreateAccountScreen(),
    );
  }
}
