import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class OrderDetails extends StatefulWidget {
  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  final List<String> _DeleveryTime = [
    "20",
    "30",
    "40",
    "50",
    "60"
  ]; //The list of values we want on the dropdown

  final List<String> _PickUpTime = ["15", "25", "35", "45", "55"];
  String _selectedDeleveryTime = "";
  String _selectedPicUpTime = "";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(
          'Orders Details',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: ArabicFonts.Cairo,
            package: 'google_fonts_arabic',
            color: Colors.white,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(2.0, 2.0),
                blurRadius: 3.0,
                color: Colors.black,
              ),
              Shadow(
                offset: Offset(2.0, 2.0),
                blurRadius: 8.0,
                color: Colors.black38,
              ),
            ],
          ),
        ),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: new Row(
                children: <Widget>[
                  //Order Details
                  new Expanded(
                    child: Text(
                      'Order Details',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
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
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            //Order name
            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    new Text(
                      'Order name',
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                  ],
                ),
                new Column(
                  children: <Widget>[
                    new Text(
                      'Piza hotspicy',
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //item onw
            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    new Text(
                      'Item One',
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                  ],
                ),
                new Column(
                  children: <Widget>[
                    new Text(
                      'Pize name One',
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //item tow
            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    new Text(
                      'Item Tow',
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                  ],
                ),
                new Column(
                  children: <Widget>[
                    new Text(
                      'Pize name Tow',
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //Ingridents
            new Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Ingridents',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
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
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            //items
            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    new Text(
                      '1',
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                    new Text(
                      '2',
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                    new Text(
                      '3',
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                    new Text(
                      '4',
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                //Delevery time
                new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    new Column(
                      children: <Widget>[
                        new Text(
                          'Delevery time',
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontFamily: ArabicFonts.Cairo,
                            package: 'google_fonts_arabic',
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        new Text(
                          'Delay time',
                          style: TextStyle(
                            color: Colors.red,
                            fontFamily: ArabicFonts.Cairo,
                            package: 'google_fonts_arabic',
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        new Text(
                          'Change',
                          style: TextStyle(
                            color: Colors.red,
                            fontFamily: ArabicFonts.Cairo,
                            package: 'google_fonts_arabic',
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    new Column(
                      children: <Widget>[
                        new Text(
                          '45 min',
                          style: TextStyle(
                            color: Colors.green,
                            fontFamily: ArabicFonts.Cairo,
                            package: 'google_fonts_arabic',
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        new Text(
                          '${_selectedDeleveryTime}',
                          style: TextStyle(
                            color: Colors.red,
                            fontFamily: ArabicFonts.Cairo,
                            package: 'google_fonts_arabic',
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                    new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        DropdownButton<String>(
                          items: _DeleveryTime.map(
                              (data) => DropdownMenuItem<String>(
                                    child: Text(data),
                                    value: data,
                                  )).toList(),
                          onChanged: (String value) {
                            setState(() => _selectedDeleveryTime = value);
                          },
                          hint: Text(
                            'Dlay time',
                            style: TextStyle(
                              color: Colors.lightBlueAccent,
                              fontFamily: ArabicFonts.Cairo,
                              package: 'google_fonts_arabic',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                //pick-up time
                new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    new Column(
                      children: <Widget>[
                        new Text(
                          'Pick-up time',
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontFamily: ArabicFonts.Cairo,
                            package: 'google_fonts_arabic',
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        new Text(
                          'Delay time',
                          style: TextStyle(
                            color: Colors.red,
                            fontFamily: ArabicFonts.Cairo,
                            package: 'google_fonts_arabic',
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        new Text(
                          'Change',
                          style: TextStyle(
                            color: Colors.red,
                            fontFamily: ArabicFonts.Cairo,
                            package: 'google_fonts_arabic',
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    new Column(
                      children: <Widget>[
                        new Text(
                          '45 min',
                          style: TextStyle(
                            color: Colors.green,
                            fontFamily: ArabicFonts.Cairo,
                            package: 'google_fonts_arabic',
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        new Text(
                          '${_selectedPicUpTime}',
                          style: TextStyle(
                            color: Colors.red,
                            fontFamily: ArabicFonts.Cairo,
                            package: 'google_fonts_arabic',
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                    new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        DropdownButton<String>(
                          items: _PickUpTime.map(
                              (data) => DropdownMenuItem<String>(
                                    child: Text(data),
                                    value: data,
                                  )).toList(),
                          onChanged: (String value) {
                            setState(() => _selectedPicUpTime = value);
                          },
                          hint: Text(
                            'Dlay time',
                            style: TextStyle(
                              color: Colors.lightBlueAccent,
                              fontFamily: ArabicFonts.Cairo,
                              package: 'google_fonts_arabic',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            new Expanded(
              child: new MaterialButton(
                onPressed: () {},
                color: Colors.deepOrange,
                splashColor: Colors.orange,
                textColor: Colors.white,
                elevation: 0.2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "Send",
                    style: TextStyle(
                      fontFamily: ArabicFonts.Cairo,
                      package: 'google_fonts_arabic',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
