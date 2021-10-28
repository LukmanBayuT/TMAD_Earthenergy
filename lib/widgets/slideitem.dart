// ignore_for_file: unnecessary_import

import 'package:earthnergy/model/slide.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class SlideItem1 extends StatelessWidget {
  final int index;
  SlideItem1(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(slideList[index].imageKinton),
                        fit: BoxFit.contain)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                slideList[index].title,
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
              Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(slideList[index].imageCot))),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                slideList[index].description,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              )
            ],
          )
        ],
      ),
    );
  }
}
