import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class ReadyOrders extends StatefulWidget {
  @override
  _ReadyOrdersState createState() => _ReadyOrdersState();
}

class _ReadyOrdersState extends State<ReadyOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(
          'Ready Orders',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: ArabicFonts.Cairo,
              package: 'google_fonts_arabic',
              color: Colors.white),
        ),
      ),
    );
  }
}
