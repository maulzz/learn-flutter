import 'package:flutter/material.dart';
import 'day2/day2_challenge.dart';
import 'day3/day3_challenge.dart';
import 'day4/day4_challenge.dart';
import 'day5/day5_challenge.dart';
import 'day6/day6_challenge.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Day6Challenge(),
    );
  }
}
