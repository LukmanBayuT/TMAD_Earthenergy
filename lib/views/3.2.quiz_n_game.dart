import 'package:earthnergy/views/6.0.quiz.dart';
import 'package:earthnergy/views/7.0.pembahasan.dart';
import 'package:earthnergy/views/7.1.pengayaan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/BG5.png'), fit: BoxFit.cover)),
        child: Column(
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Title.png'))),
                  alignment: Alignment.center,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/QuizNGame.png'),
                          alignment: Alignment.center)),
                  width: 200,
                  height: 100,
                )),
            Flexible(
              flex: 1,
              child: Center(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: [
                          Flexible(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/Qz.png'))),
                                width: 150,
                                height: 150,
                              )),
                          Flexible(
                              flex: 1,
                              child: Container(
                                child: CupertinoButton(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.orangeAccent.shade700,
                                  child: Text('QUIZ',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      )),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => quiz_app()));
                                  },
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Flexible(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/Pembahasan.png'))),
                                width: 150,
                                height: 150,
                              )),
                          Flexible(
                              child: Container(
                            child: CupertinoButton(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.orangeAccent.shade700,
                              child: Text('PENGAYAAN',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => pengayaan()));
                              },
                            ),
                          ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assets/Pemb.png'))),
              ),
            ),
            Flexible(
                child: CupertinoButton(
              borderRadius: BorderRadius.circular(30),
              color: Colors.orangeAccent.shade700,
              child: Text(
                'PEMBAHASAN',
                style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => pembahasan()));
              },
            ))
          ],
        ),
      ),
    );
  }
}
