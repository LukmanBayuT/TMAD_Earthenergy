// ignore_for_file: unused_import, unnecessary_import, must_be_immutable, override_on_non_overriding_member

import 'package:earthnergy/model/slide.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class SlideDots extends StatelessWidget {
  @override
  bool isActive;
  SlideDots(this.isActive);
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: isActive ? Colors.white : Colors.deepPurpleAccent),
    );
  }
}
