// ignore_for_file: unused_import, unnecessary_import, camel_case_types

import 'package:carousel_slider/carousel_slider.dart';
import 'package:earthnergy/views/5.1.link.dart';
import 'package:earthnergy/views/6.0.quiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class pengayaan extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _pengayaanState();
  }
}

class _pengayaanState extends State<pengayaan> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> myData = [
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/peng1.png'))),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/peng2.png'))),
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
