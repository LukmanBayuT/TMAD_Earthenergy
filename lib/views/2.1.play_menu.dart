import 'package:earthnergy/views/3.1.materi_map.dart';
import 'package:earthnergy/views/3.2.quiz_n_game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Play_Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/BG3.png'), fit: BoxFit.cover)),
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
                            image: AssetImage('assets/PLAY.png'),
                            alignment: Alignment.center)),
                    width: 200,
                    height: 100,
                  )),
              Flexible(
                  flex: 1,
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
                                          image: AssetImage(
                                              'assets/Materix.png'))),
                                  width: 150,
                                  height: 150,
                                )),
                            Flexible(
                                flex: 1,
                                child: Container(
                                  child: CupertinoButton(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.orangeAccent.shade700,
                                    child: Text('Materi',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        )),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Materi_Map()));
                                    },
                                  ),
                                ))
                          ],
                        ),
                        Column(
                          children: [
                            Flexible(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/QnG.png'))),
                                  width: 150,
                                  height: 150,
                                )),
                            Flexible(
                                child: Container(
                              child: CupertinoButton(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.orangeAccent.shade700,
                                child: Text('Quiz Game',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => QuizGame()));
                                },
                              ),
                            ))
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
