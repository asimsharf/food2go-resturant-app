import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'About',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: ArabicFonts.Cairo,
            package: 'google_fonts_arabic',
            color: Colors.white,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(3.0, 3.0),
                blurRadius: 3.0,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              Shadow(
                offset: Offset(3.0, 3.0),
                blurRadius: 8.0,
                color: Color.fromARGB(125, 0, 0, 255),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                "Food2GO Resturant app",
                style: TextStyle(
                    fontFamily: ArabicFonts.Cairo,
                    package: 'google_fonts_arabic',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: new Container(
                height: 100.0,
                width: 100.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: FadeInImage.assetNetwork(
                    fit: BoxFit.fill,
                    placeholder: 'assets/ic_launcher.png',
                    image: 'assets/ic_launcher.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: Text(
                "here well be informations about th eapplications so if yo have to put the infos over here yo just free for that",
                style: TextStyle(
                    fontFamily: ArabicFonts.Cairo,
                    package: 'google_fonts_arabic',
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
