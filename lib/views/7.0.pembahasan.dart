// ignore_for_file: unused_import, unnecessary_import, camel_case_types

import 'package:carousel_slider/carousel_slider.dart';
import 'package:earthnergy/views/5.1.link.dart';
import 'package:earthnergy/views/6.0.quiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class pembahasan extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _pembahasanState();
  }
}

class _pembahasanState extends State<pembahasan> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> myData = [
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Pemb/1.png'))),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Pemb/2.png'))),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Pemb/3.png'))),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Pemb/4.png'))),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Pemb/5.png'))),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Pemb/6.png'))),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Pemb/7.png'))),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Pemb/8.png'))),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Pemb/9.png'))),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Pemb/10.png'))),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Pemb/11.png'))),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Pemb/12.png'))),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Pemb/13.png'))),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Pemb/14.png'))),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Pemb/15.png'))),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CarouselSlider(
          items: myData,
          carouselController: _controller,
          options: CarouselOptions(
              reverse: false,
              enableInfiniteScroll: false,
              autoPlay: false,
              enlargeCenterPage: true,
              aspectRatio: 0.8,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: myData.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.deepPurpleAccent)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
              child: Icon(Icons.navigation),
              label: "Back",
              onTap: () {
                Navigator.pop(context);
              }),
          SpeedDialChild(
              child: Icon(Icons.gamepad),
              label: "Quiz",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => quiz_app()));
              }),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
