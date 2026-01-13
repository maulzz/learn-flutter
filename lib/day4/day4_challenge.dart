// StatelessWidget & Widget dasar
import 'package:flutter/material.dart';

class Day4Challenge extends StatelessWidget {
  const Day4Challenge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 186, 186, 186),
      appBar: AppBar(
        title: const Text(
          "Day 4 Challage: StatelessWidget & Widget Dasar",
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 10,
                offset: Offset(0, 5),
                spreadRadius: 5,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Wildan Maulana Habibi",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              // buat ngasih jarak
              SizedBox(height: 8),
              Text("Junior MobileDev", style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
      ),
    );
  }
}
