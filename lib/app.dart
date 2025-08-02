import 'package:flutter/material.dart';
import 'ewallet.dart';

class EwalletApp extends StatelessWidget {
  const EwalletApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
