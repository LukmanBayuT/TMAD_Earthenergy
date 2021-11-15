import 'package:carousel_slider/carousel_slider.dart';
import 'package:earthnergy/views/5.1.link.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Materi1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Materi1State();
  }
}

class _Materi1State extends State<Materi1> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> myData = [
    InteractiveViewer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('materi/1.png'))),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('materi/2.png'))),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('materi/3.png'))),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('materi/4.png'))),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('materi/5.1.png'))),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('materi/5.2.png'))),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('materi/5.3.png'))),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('materi/5.4.png'))),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('materi/5.5.png'))),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('materi/5.6.png'))),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('materi/6.png'))),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('materi/7.png'))),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('materi/8.png'))),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('materi/9.png'))),
      ),
    ),
    InteractiveViewer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('materi/10.png'))),
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
              child: Icon(Icons.add_link_outlined),
              label: "Link Video",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Link_Video()));
              }),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
