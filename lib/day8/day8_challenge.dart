import 'package:flutter/material.dart';
import '../styles/app_text_style.dart';

class Mahasiswa {
  String nama;
  double ipk;
  bool isAktif;
  bool isFavorite;

  Mahasiswa(this.nama, this.ipk, this.isAktif, this.isFavorite);

  Color ipkColor(double ipk) {
    if (ipk >= 3.5) return Colors.green;
    if (ipk >= 3.0) return Colors.blue;
    return Colors.red;
  }
}

class Day8Challenge extends StatelessWidget {
  const Day8Challenge({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Mahasiswa> mahasiswaList = [
      Mahasiswa("Wildan Maulana", 3.7, true, true),
      Mahasiswa("Raihan Azka", 3.5, true, false),
      Mahasiswa("Faiz Zulfa", 3.6, true, false),
      Mahasiswa("Bahlil Lahadalia", 2.9, false, false),
      Mahasiswa("Critiano Messi", 2.5, true, false),
      Mahasiswa("Dentol Cihuy", 2.1, false, false),
      Mahasiswa("Raisha Pasha", 3.7, true, false),
    ];

    List<Mahasiswa> m = mahasiswaList.toList();
    m.sort((a, b) => b.ipk.compareTo(a.ipk));

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 209, 209, 209),
      appBar: AppBar(
        title: const Text("Day 8: Layout Lanjutan (StatefulWidget & setState)"),
      ),
      body: ListView.builder(
        itemCount: m.length,
        itemBuilder: (context, index) {
          final mhs = m[index];
          return CardList(
            nama: mhs.nama,
            ipk: mhs.ipk,
            isAktif: mhs.isAktif,
            ipkColor: mhs.ipkColor(mhs.ipk),
            isFavorite: mhs.isFavorite,
          );
        },
      ),
    );
  }
}

class CardList extends StatelessWidget {
  final String nama;
  final double ipk;
  final bool isAktif;
  final Color ipkColor;
  final bool isFavorite;

  const CardList({
    required this.nama,
    required this.ipk,
    required this.isAktif,
    required this.ipkColor,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: CardContent(
          nama: nama,
          ipk: ipk,
          isAktif: isAktif,
          isFavorite: isFavorite,
          ipkColor: ipkColor,
        ),
      ),
    );
  }
}

class CardContent extends StatefulWidget {
  final String nama;
  final double ipk;
  final bool isAktif;
  final Color ipkColor;
  final bool isFavorite;
  const CardContent({
    super.key,
    required this.nama,
    required this.ipk,
    required this.isAktif,
    required this.isFavorite,
    required this.ipkColor,
  });

  @override
  State<StatefulWidget> createState() => _CardContent();
}

class _CardContent extends State<CardContent> {
  late String nama;
  late double ipk;
  late bool isAktif;
  late bool isFavorite;
  late Color ipkColor;

  @override
  void initState() {
    super.initState();
    nama = widget.nama;
    ipk = widget.ipk;
    isAktif = widget.isAktif;
    isFavorite = widget.isFavorite;
    ipkColor = widget.ipkColor;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Icon(Icons.person, size: 22),
                  SizedBox(width: 6),
                  Text(nama, style: AppTextStyle.mainText),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : null,
                    ),
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      isAktif
                          ? Icons.check_box_outlined
                          : Icons.check_box_outline_blank_outlined,
                      // color: isFavorite ? Colors.red : null,
                    ),
                    onPressed: () {
                      setState(() {
                        isAktif = !isAktif;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(),
        SizedBox(height: 5),
        Row(
          children: [
            Icon(Icons.book, size: 22),
            SizedBox(width: 6),
            Text(
              ipk.toStringAsFixed(2),
              style: AppTextStyle.subMainText.copyWith(color: ipkColor),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Icon(
              isAktif ? Icons.check_circle : Icons.cancel,
              color: isAktif ? Colors.green : Colors.red,
            ),
            SizedBox(width: 6),
            Text(
              isAktif ? "Mahasiswa Aktif" : "Mahasiswa Tidak Aktif",
              style: AppTextStyle.subMainText,
            ),
          ],
        ),
      ],
    );
  }
}
