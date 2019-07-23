import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class CompleteOrders extends StatefulWidget {
  @override
  _CompleteOrdersState createState() => _CompleteOrdersState();
}

class _CompleteOrdersState extends State<CompleteOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(
          'Complete Orders',
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
