import 'package:earthnergy/views/3.2.1.materi_earthy.dart';
import 'package:earthnergy/views/4.1.kompetensi.dart';
import 'package:earthnergy/views/4.2.tujuan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Materi_Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/BG6.png'), fit: BoxFit.cover)),
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
                            image: AssetImage('assets/Materix.png'),
                            alignment: Alignment.center)))),
            Flexible(
                flex: 1,
                child: Container(
                  child: CupertinoButton(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    child: Text('MATERI',
                        style: GoogleFonts.montserrat(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade800,
                        )),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => materi_earthy()));
                    },
                  ),
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
                                        image: AssetImage('assets/KM.png'))),
                                width: 150,
                                height: 150,
                              )),
                          Flexible(
                              flex: 1,
                              child: Container(
                                child: CupertinoButton(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                  child: Text('Kompetensi',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade800,
                                      )),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Kompetensi()));
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
                                        image: AssetImage('assets/TJ.png'))),
                                width: 150,
                                height: 150,
                              )),
                          Flexible(
                              flex: 1,
                              child: Container(
                                child: CupertinoButton(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                  child: Text('Tujuan',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade800,
                                      )),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Tujuan()));
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
    );
  }
}
