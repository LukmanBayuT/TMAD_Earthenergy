// ignore_for_file: camel_case_types, unused_field

import 'package:earthnergy/model/slide.dart';
import 'package:earthnergy/views/4.3.materi_section.dart';
import 'package:earthnergy/widgets/slideitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// ignore: unnecessary_import
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class materi_earthy extends StatefulWidget {
  final int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  _materi_earthyState createState() => _materi_earthyState();
}

class _materi_earthyState extends State<materi_earthy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(200, 143, 148, 251),
            Color.fromARGB(200, 78, 84, 200)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Expanded(
                    child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    PageView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: PageController(initialPage: 0),
                        itemCount: slideList.length,
                        itemBuilder: (context, i) => SlideItem1(i)),
                  ],
                )),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    CupertinoButton(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(200, 74, 0, 224),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Materi_Section()));
                      },
                      child: Text('Materi'),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Sudah paham? Langsung menuju materi ya',
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
