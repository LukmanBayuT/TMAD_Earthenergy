import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';

// ignore: camel_case_types
class game_menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/MT.png'),
                alignment: Alignment.center,
                fit: BoxFit.cover)),
      ),
    );
  }
}
