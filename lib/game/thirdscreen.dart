import 'package:earthnergy/game/secondscreen.dart';
import 'package:earthnergy/views/1.main_menu.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  int score, totalQuestion, correct, incorrect, notattempted;
  Result(
      {this.score,
      this.totalQuestion,
      this.correct,
      this.incorrect,
      this.notattempted});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  String greeting = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var percentage = (widget.score);
    if (percentage >= 200) {
      greeting = "Luar Biasa!";
    } else if (percentage > 150 && percentage < 200) {
      greeting = "Kerja Bagus!";
    } else if (percentage > 100 && percentage < 150) {
      greeting = "Lumayan";
    } else if (percentage < 100) {
      greeting = "Perbaiki Lagi!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$greeting',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Skor kamu adalah ${widget.score} dari ${widget.totalQuestion * 20}',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                '${widget.correct} Benar, ${widget.incorrect} Salah dari ${widget.totalQuestion} pertanyaan',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Game2()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 54),
                child: Text(
                  "Ulangi Kuisnya Lagi",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Main_Menu()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 54),
                child: Text(
                  "Kembali ke Menu Utama",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
