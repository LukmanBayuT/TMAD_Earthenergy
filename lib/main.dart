import 'package:earthnergy/views/1.main_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/BG4.png'), fit: BoxFit.cover)),
          child: Column(
            children: <Widget>[
              Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/Title.png'),
                    )),
                  )),
              Flexible(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    child: CupertinoButton(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blueAccent.shade700,
                        child: Text('Main Menu',
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              color: Colors.white,
                            )),
                        onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Main_Menu()))
                            }),
                  )),
              Flexible(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/HlfMascot.png'),
                            alignment: Alignment.bottomCenter)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
