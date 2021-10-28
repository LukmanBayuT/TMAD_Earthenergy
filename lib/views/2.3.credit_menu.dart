import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Credit_Menu extends StatelessWidget {
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
                            image: AssetImage('assets/Title.png'))),
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/CR.png'),
                            alignment: Alignment.center)),
                    width: 200,
                    height: 100,
                  )),
              Flexible(
                  flex: 5,
                  child: Container(
                    width: 350,
                    height: 450,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/profil.png')),
                        shape: BoxShape.rectangle,
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20)),
                    alignment: Alignment.center,
                  )),
              Flexible(
                  child: Container(
                child: CupertinoButton(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.tealAccent.shade700,
                  onPressed: () {},
                  child: Text('Credit Pengembang',
                      style: GoogleFonts.montserrat(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
