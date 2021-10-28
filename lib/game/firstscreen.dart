import 'dart:ui';

import 'package:earthnergy/game/secondscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class Game1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xfff953c6), Color(0xffb91d73)]),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Earthy/E2.png'))),
            ),
            Text(
              'Hallo Ketemu lagi sama Earthy disini, Kali ini kita akan main game! game apa itu?',
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Game ini merupakan game Benar atau Salah.. Teman teman diberikan waktu 5 detik untuk menjawab pertanyaan yang keluar saat teman teman mulai memainkan gamenya. Berpikir cepat dan tanggap merupakan adalah salah satu kunci untuk mendapatkan skor yang bagus.',
              style: GoogleFonts.montserrat(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Sekian penjelasan Earthy kali ini, Selamat mencoba semoga beruntung!',
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: CupertinoButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Game2(),
                        ),
                      ),
                    },
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.purpleAccent,
                    child: Text('Mulai Main',
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          color: Colors.white,
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
