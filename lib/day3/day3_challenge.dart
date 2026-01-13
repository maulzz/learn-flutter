// Control flow (if, loop), class & object
import 'package:flutter/material.dart';

class Mahasiswa {
  String nama;
  double ipk;
  bool isAktif;

  Mahasiswa(this.nama, this.ipk, this.isAktif);

  String kategoriIpk(double ipk) {
    if (ipk >= 3.5) {
      return "Cumlaude";
    } else if (ipk >= 3.0) {
      return "Baik";
    } else {
      return "Perlu Perbaikan";
    }
  }

  Color ipkColor(double ipk) {
    if (ipk >= 3.5) {
      return Colors.green;
    } else if (ipk >= 3.0) {
      return Colors.blue;
    } else {
      return Colors.red;
    }
  }
}

class Day3Challenge extends StatelessWidget {
  const Day3Challenge({super.key});

  @override
  Widget build(BuildContext context) {
    List<Mahasiswa> mahasiswaList = [
      Mahasiswa("Wildan", 3.6, true),
      Mahasiswa("Slamet", 2.7, false),
      Mahasiswa("Ani", 3.1, true),
      Mahasiswa("Fahmi", 2.5, false),
      Mahasiswa("Raihan", 3.5, true),
      Mahasiswa("Pasha", 3.63, true),
    ];

    List<Mahasiswa> aktif = mahasiswaList.where((m) => m.isAktif).toList();
    // untuk menguurtkan dari yang besar
    aktif.sort((a, b) => b.ipk.compareTo(a.ipk));
    // note, kalau mau dari terkecil tinggal dibalik dari a ke b

    double totalIpk = 0;
    for (var t in aktif) {
      totalIpk += t.ipk;
    }

    double rataRataIpk = aktif.isEmpty ? 0 : totalIpk / aktif.length;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Control flow (if, loop), class & object"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Daftar Mahasiswa Aktif"),
            Text(
              "Rata-Rata IPK Mahasiswa Aktif: ${rataRataIpk.toStringAsFixed(2)}",
            ),
            Text("Jumlah Mahasiswa Aktif: ${aktif.length}"),
            Divider(),

            for (var m in aktif) ...[
              Text("Nama: ${m.nama}"),
              Text("IPK: ${m.ipk}"),
              Text(
                "Kategori: ${m.kategoriIpk(m.ipk)}",
                style: TextStyle(
                  color: m.ipkColor(m.ipk),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Status: ${m.isAktif ? "Aktif" : "Tidak Aktif"}"),
              Divider(),
            ],
          ],
        ),
      ),
    );
  }
}
