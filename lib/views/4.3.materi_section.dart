import 'package:earthnergy/views/5.1.dart';
import 'package:earthnergy/views/5.2.dart';
import 'package:earthnergy/views/5.3.dart';
import 'package:earthnergy/views/5.4.dart';
import 'package:earthnergy/views/5.5.dart';
import 'package:earthnergy/views/5.6.dart';
import 'package:earthnergy/views/5.7.dart';
import 'package:earthnergy/views/5.8.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types

// ignore: camel_case_types
class Materi_Section extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('MAPicon/BG.png'),
                fit: BoxFit.cover,
                alignment: Alignment.center)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('MAPicon/Title.png'))),
              ),
            ),
            Flexible(
                flex: 1,
                child: CupertinoButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Materi1()));
                  },
                  child: Text(
                    'Materi 1',
                    style: GoogleFonts.montserrat(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  color: Colors.white,
                )),
            Flexible(
                flex: 1,
                child: CupertinoButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Materi2()));
                  },
                  child: Text(
                    'Materi 2',
                    style: GoogleFonts.montserrat(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  color: Colors.white,
                )),
            Flexible(
                flex: 1,
                child: CupertinoButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Materi3()));
                  },
                  child: Text(
                    'Materi 3',
                    style: GoogleFonts.montserrat(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  color: Colors.white,
                )),
            Flexible(
                flex: 1,
                child: CupertinoButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Materi4()));
                  },
                  child: Text(
                    'Materi 4',
                    style: GoogleFonts.montserrat(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  color: Colors.white,
                )),
            Flexible(
                flex: 1,
                child: CupertinoButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Materi5()));
                  },
                  child: Text(
                    'Materi 5',
                    style: GoogleFonts.montserrat(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  color: Colors.white,
                )),
            Flexible(
                flex: 1,
                child: CupertinoButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Materi6()));
                  },
                  child: Text(
                    'Materi 6',
                    style: GoogleFonts.montserrat(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  color: Colors.white,
                )),
            Flexible(
                flex: 1,
                child: CupertinoButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Materi7()));
                  },
                  child: Text(
                    'Materi 7',
                    style: GoogleFonts.montserrat(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  color: Colors.white,
                )),
            Flexible(
                flex: 1,
                child: CupertinoButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Materi8()));
                  },
                  child: Text(
                    'Materi 8',
                    style: GoogleFonts.montserrat(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
