import 'package:flutter/material.dart';
import '../styles/app_text_style.dart';

class Day6Challenge extends StatelessWidget {
  const Day6Challenge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 209, 209, 209),
      appBar: AppBar(
        title: const Text("Day 6: Styling (Color, TextStyle, BoxDecoration)"),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                blurRadius: 10,
                offset: Offset(0, 5),
                spreadRadius: 5,
              ),
            ],
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        '../assets/images/bgcard.jpg',
                        height: 150,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 90,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          '../assets/images/ketawacik.JPG',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Wildan Maulana H", style: AppTextStyle.mainText),
                        Text("Mobile Dev", style: AppTextStyle.subText),
                      ],
                    ),
                    Divider(),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.email, size: 22),
                        SizedBox(width: 6),
                        Text(
                          "wilXXX@gmail.com",
                          style: AppTextStyle.subMainText,
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Icon(Icons.school, size: 22),
                        SizedBox(width: 6),
                        Text(
                          "Mahasiswa Aktif ",
                          style: AppTextStyle.subMainText,
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(children: [HitungIpk(ipk: 3.7)]),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        StyledBox(text: "Flutter"),
                        SizedBox(width: 14),
                        StyledBox(text: "App Design"),
                        SizedBox(width: 14),
                        StyledBox(text: "Full Stack"),
                      ],
                    ),

                    SizedBox(height: 18),
                    Divider(),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: StyledButton(
                            txt: "Follow",
                            bg: const Color.fromARGB(255, 43, 43, 43),
                            onPressed: () {
                              print("Anu polow");
                            },
                          ),
                        ),
                        SizedBox(width: 18),
                        Expanded(
                          child: StyledButton(
                            txt: "Message",
                            bg: const Color.fromARGB(255, 43, 43, 43),
                            onPressed: () {
                              print("Anu pesan");
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
