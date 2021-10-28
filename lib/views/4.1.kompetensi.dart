import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';

class Kompetensi extends StatelessWidget {
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
                            image: AssetImage('assets/Mascot.png'),
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
                            image: AssetImage('assets/Kompetensi.png')),
                        shape: BoxShape.rectangle,
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20)),
                    alignment: Alignment.center,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
