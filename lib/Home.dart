import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(
          'Resturant app',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: ArabicFonts.Cairo,
              package: 'google_fonts_arabic',
              color: Colors.white),
        ),
      ),
      body: new Column(
        children: <Widget>[
          //Main Screen
          new Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new Text(
                    'Main Screen',
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      color: Colors.lightBlueAccent,
                      fontFamily: ArabicFonts.Cairo,
                      package: 'google_fonts_arabic',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //New Orders
          _newOrder(),
          //pending Orders
          _pendingOrder(),
          //Ready Orders
          _readyOrder(),
          //Complete Orders
          _completeOrder(),
        ],
      ),
      drawer: new Drawer(
          child: new Container(
        alignment: Alignment.topCenter,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/drawerbg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: new ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Text(
                  'Resturant app',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: ArabicFonts.Cairo,
                      fontSize: 18.0,
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
                      ]),
                ),
              ),
              accountEmail: new Text(
                "resturant@company.com",
                style: TextStyle(
                    fontSize: 14.0,
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
                    ]),
              ),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: new Color(0xFF00C2E7),
                child: new Container(
                  height: 80.0,
                  width: 80.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      image: new DecorationImage(
                        image: new AssetImage("assets/avatar_person.png"),
                        fit: BoxFit.cover,
                      ),
                      color: Color(0xFFFFF6E8)),
                ),
              ),
            ),
            //Home
            new ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.home,
                  color: Colors.deepOrange,
                  size: 20.0,
                ),
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: ArabicFonts.Cairo,
                  fontWeight: FontWeight.bold,
                  package: 'google_fonts_arabic',
                  fontSize: 20.0,
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
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            //Profile
            new ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.deepOrange,
                  size: 20.0,
                ),
              ),
              title: Text('Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: ArabicFonts.Cairo,
                    fontWeight: FontWeight.bold,
                    package: 'google_fonts_arabic',
                    fontSize: 20.0,
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
                  )),
              onTap: () {
                Navigator.popAndPushNamed(context, '/Profile');
              },
            ),
            new ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.bookmark_border,
                  color: Colors.deepOrange,
                  size: 20.0,
                ),
              ),
              title: Text('Orders',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: ArabicFonts.Cairo,
                    fontWeight: FontWeight.bold,
                    package: 'google_fonts_arabic',
                    fontSize: 20.0,
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
                  )),
              onTap: () {
                Navigator.popAndPushNamed(context, '/Orders');
              },
            ),
            new ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.report,
                  color: Colors.deepOrange,
                  size: 20.0,
                ),
              ),
              title: Text('Reports',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: ArabicFonts.Cairo,
                    fontWeight: FontWeight.bold,
                    package: 'google_fonts_arabic',
                    fontSize: 20.0,
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
                  )),
              onTap: () {
                Navigator.popAndPushNamed(context, '/Reports');
              },
            ),

            new Divider(
              color: Color(0xFF00C2E7),
            ),
            //Login
            new ListTile(
                trailing: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.exit_to_app,
                    color: Colors.deepOrange,
                    size: 20.0,
                  ),
                ),
                title: Text('Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: ArabicFonts.Cairo,
                      fontWeight: FontWeight.bold,
                      package: 'google_fonts_arabic',
                      fontSize: 20.0,
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
                    )),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/SplashPageLoginTow');
                }),
            //Help
            new ListTile(
                trailing: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.call,
                    color: Colors.deepOrange,
                    size: 20.0,
                  ),
                ),
                title: Text('Support',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: ArabicFonts.Cairo,
                      fontWeight: FontWeight.bold,
                      package: 'google_fonts_arabic',
                      fontSize: 20.0,
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
                    )),
                onTap: () {
                  Navigator.of(context).pushNamed('/Help');
                }),
            //About
            new ListTile(
                trailing: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.info,
                    color: Colors.deepOrange,
                    size: 20.0,
                  ),
                ),
                title: Text('About',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: ArabicFonts.Cairo,
                      fontWeight: FontWeight.bold,
                      package: 'google_fonts_arabic',
                      fontSize: 20.0,
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
                    )),
                onTap: () {
                  Navigator.of(context).pushNamed('/About');
                }),
          ],
        ),
      )),
    );
  }

  Widget _newOrder() {
    return new Container(
      height: 60.0,
      child: new InkWell(
        splashColor: Colors.deepOrange,
        onTap: () {
          Navigator.of(context).pushNamed('/OrderDetails');
        },
        child: new Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(2.0),
          padding: const EdgeInsets.all(10.0),
          decoration: new BoxDecoration(
            border: new Border.all(
              width: 1.0,
              color: Colors.red,
            ),
            borderRadius: new BorderRadius.all(
              new Radius.circular(5.0), //   ,      <--- border radius here
            ),
          ),
          child: new Text(
            'New Orders',
            style: new TextStyle(
              fontFamily: ArabicFonts.Cairo,
              package: 'google_fonts_arabic',
              color: Colors.red,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.3,
            ),
          ),
        ),
      ),
    );
  }

  Widget _readyOrder() {
    return new Container(
      height: 60.0,
      child: new InkWell(
        splashColor: Colors.deepOrange,
        onTap: () {
          Navigator.of(context).pushNamed('/OrderDetails');
        },
        child: new Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(2.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: new Border.all(
              width: 1.0,
              color: Colors.orange,
            ),
            borderRadius: new BorderRadius.all(
              new Radius.circular(5.0), //   ,      <--- border radius here
            ),
          ),
          child: new Text(
            'pending Orders',
            style: new TextStyle(
              fontFamily: ArabicFonts.Cairo,
              package: 'google_fonts_arabic',
              color: Colors.orange,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.3,
            ),
          ),
        ),
      ),
    );
  }

  Widget _pendingOrder() {
    return new Container(
      height: 60.0,
      child: new InkWell(
        splashColor: Colors.deepOrange,
        onTap: () {
          Navigator.of(context).pushNamed('/OrderDetails');
        },
        child: new Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(2.0),
          padding: const EdgeInsets.all(10.0),
          decoration: new BoxDecoration(
            border: new Border.all(
              width: 1.0,
              color: Colors.blue,
            ),
            borderRadius: new BorderRadius.all(
              new Radius.circular(5.0), //   ,      <--- border radius here
            ),
          ),
          child: new Text(
            'Ready Orders',
            style: new TextStyle(
              fontFamily: ArabicFonts.Cairo,
              package: 'google_fonts_arabic',
              color: Colors.blue,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.3,
            ),
          ),
        ),
      ),
    );
  }

  Widget _completeOrder() {
    return new Container(
      height: 60.0,
      child: new InkWell(
        splashColor: Colors.deepOrange,
        onTap: () {
          Navigator.of(context).pushNamed('/OrderDetails');
        },
        child: new Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(2.0),
          padding: const EdgeInsets.all(10.0),
          decoration: new BoxDecoration(
            border: new Border.all(
              width: 1.0,
              color: Colors.green,
            ),
            borderRadius: new BorderRadius.all(
              new Radius.circular(5.0), //   ,      <--- border radius here
            ),
          ),
          child: new Text(
            'Complete Orders',
            style: new TextStyle(
              fontFamily: ArabicFonts.Cairo,
              package: 'google_fonts_arabic',
              color: Colors.green,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.3,
            ),
          ),
        ),
      ),
    );
  }
}
