import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';

class Materi2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Materi2State();
  }
}

class _Materi2State extends State<Materi2> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> myData = [
    InteractiveViewer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('materi/11.png'))),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('materi/12.png'))),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('materi/13.png'))),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('materi/14.png'))),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('materi/15.png'))),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('materi/16.png'))),
      ),
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
              reverse: true,
              enableInfiniteScroll: false,
              autoPlay: false,
              enlargeCenterPage: true,
              aspectRatio: 0.7,
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
                    shape: BoxShape.rectangle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.green)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.navigation_rounded,
        ),
        backgroundColor: Colors.blueAccent[400],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
