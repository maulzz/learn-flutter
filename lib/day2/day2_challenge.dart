// Dasar bahasa Dart (variable, tipe data, function)
import 'package:flutter/material.dart';

class Day2Challenge extends StatelessWidget {
  const Day2Challenge({super.key});

  String hitungIpk(double ipk) {
    if (ipk >= 3.5) {
      return "Cumlaude";
    } else if (ipk >= 3.0) {
      return "Baik";
    } else {
      return "Perlu Perbaikan";
    }
  }

  @override
  Widget build(BuildContext context) {
    String nama = "wildan";
    int umur = 18;
    bool isMahasiswa = true;
    double ipk = 3.5;
    List<String> matkul = [
      "Pemrograman Mobile",
      "Basis Data",
      "Rekayasa Perangkat Lunak",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Learn Variabel, Tipe Data, & Function"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Nama: $nama"),
              Text("Umur: $umur"),
              Text("IPK: $ipk"),
              Text("Kategori: ${hitungIpk(ipk)}"),
              Text(
                "Status Mahasiswa: ${isMahasiswa ? "Aktif" : "Tidak Aktif"}",
              ),
              Text("Mata Kuliah:"),
              ...matkul.map((m) => Text(m)),
              // kalau mau pake far juga bisa
              for (var m in matkul) Text(m),
            ],
          ),
        ),
      ),
    );
  }
}