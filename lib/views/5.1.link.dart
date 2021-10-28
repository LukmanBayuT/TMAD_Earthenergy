// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class Link_Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(200, 17, 153, 124),
          Color.fromARGB(200, 56, 239, 125)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  child: new ElevatedButton(
                    onPressed: _Video1,
                    child: new Text('Video 1'),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(200, 178, 10, 44),
                      onPrimary: Colors.white,
                      onSurface: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: new ElevatedButton(
                    onPressed: _Video2,
                    child: new Text('Video 2'),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(200, 247, 183, 51),
                      onPrimary: Colors.white,
                      onSurface: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: new ElevatedButton(
                    onPressed: _Video3,
                    child: new Text('Video 3'),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(200, 252, 74, 26),
                      onPrimary: Colors.white,
                      onSurface: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: new ElevatedButton(
                    onPressed: _Video4,
                    child: new Text('Video 4'),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(200, 28, 181, 224),
                      onPrimary: Colors.white,
                      onSurface: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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

// ignore: non_constant_identifier_names
_Video1() async {
  const url = 'https://youtu.be/Ge0Wszz8ltc';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

// ignore: non_constant_identifier_names
_Video2() async {
  const url = 'https://youtu.be/zIdFxUHTedM ';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

// ignore: non_constant_identifier_names
_Video3() async {
  const url = 'https://youtu.be/_y11CmkVWHI ';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

// ignore: non_constant_identifier_names
_Video4() async {
  const url = 'https://youtu.be/jCRTFwd1O10';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
