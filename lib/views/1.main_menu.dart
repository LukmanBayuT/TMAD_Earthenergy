import 'package:earthnergy/game/firstscreen.dart';
import 'package:earthnergy/views/2.3.credit_menu.dart';
import 'package:earthnergy/views/2.1.play_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Main_Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/BG2.png'),
                fit: BoxFit.cover,
                alignment: Alignment.center)),
        child: Column(
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Title.png'),
                          alignment: Alignment.center)),
                )),
            //BUTTON OVERHERE
            Flexible(
                flex: 1,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: CupertinoButton(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.redAccent.shade400,
                      child: Text('Materi',
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.white,
                          )),
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Play_Menu()))
                          }),
                )),
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: CupertinoButton(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.deepPurple.shade800,
                  child: Text('Game',
                      style: GoogleFonts.montserrat(
                        fontSize: 15,
                        color: Colors.white,
                      )),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Game1(),
                      ),
                    ),
                  },
                ),
              ),
            ),
            Flexible(
                flex: 1,
                child: Container(
                  alignment: Alignment.topCenter,
                  child: CupertinoButton(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.green.shade900,
                      child: Text('Credit',
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.white,
                          )),
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Credit_Menu()))
                          }),
                )),
            Flexible(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/LilMascot.png'),
                          alignment: Alignment.bottomCenter)),
                ))
          ],
        ),
      ),
    ));
  }
}
