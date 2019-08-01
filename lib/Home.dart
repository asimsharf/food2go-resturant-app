import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:resturant/LoginClients/utils/app_shared_preferences.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final globalKey = new GlobalKey<ScaffoldState>();

//  var userName;
//  var userEamil;
//  var userToken;
//  var userAvatar;
//
//  SharedPreferences prefs;
//
//  @override
//  Future<void> didChangeDependencies() async {
//    super.didChangeDependencies();
//    if (userName == null ||
//        userEamil == null ||
//        userToken == null ||
//        userAvatar == null) {
//      await initUserProfile();
//    }
//  }

//  Future<void> initUserProfile() async {
//    String name = await AppSharedPreferences.getFromSession('userName');
//    String email = await AppSharedPreferences.getFromSession('userEmail');
//    String token = await AppSharedPreferences.getFromSession('userToken');
//    String avatar = await AppSharedPreferences.getFromSession('userAvatar');
//    setState(() {
//      userName = name;
//      userEamil = email;
//      userToken = token;
//      userAvatar = avatar;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: globalKey,
      appBar: _appBar(),
      body: _body(),
      drawer: _drawer(),
    );
  }

  //Body content
  Widget _body() {
    return new Column(
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
    );
  }

  //Drawer content
  Widget _drawer() {
    return new Drawer(
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
              accountName: new Padding(
                padding: const EdgeInsets.all(0.0),
                child: Text(
                  'fffff',
                  //((userName == null) ? "Resturant Name" : userName),
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
                    ],
                  ),
                ),
              ),
              accountEmail: new Text(
                'dddd',
                //((userEamil == null) ? "Resturant Email" : userEamil),
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
                  ],
                ),
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
              title: Text(
                'Profile',
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
                Navigator.popAndPushNamed(context, '/ProfilePage');
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
              title: Text(
                'Orders',
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
              title: Text(
                'Reports',
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
              title: Text(
                'LogOut',
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
                showDialog(
                  barrierDismissible: false,
                  context: globalKey.currentContext,
                  child: _logOutDialog(),
                );
              },
            ),
            //Support
            new ListTile(
                trailing: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.call,
                    color: Colors.deepOrange,
                    size: 20.0,
                  ),
                ),
                title: Text(
                  'Support',
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
                  Navigator.of(context).pushNamed('/Support');
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
                title: Text(
                  'About',
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
                  Navigator.of(context).pushNamed('/About');
                }),
          ],
        ),
      ),
    );
  }

  //AppBar context
  Widget _appBar() {
    return new AppBar(
      centerTitle: true,
      title: new Text(
        'Food2Go Resturant app',
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
    );
  }

  //New Order context
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

  //Ready Order context
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

  //Pending Order context
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

  //Complete Order context
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

  //LogOut context
  Widget _logOutDialog() {
    return new AlertDialog(
      title: new Text(
        "Logout",
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: ArabicFonts.Cairo,
          package: 'google_fonts_arabic',
          color: Colors.deepOrange,
          fontSize: 20.0,
        ),
      ),
      content: new Text(
        "Are you suer ? Want to LogOut!",
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: ArabicFonts.Cairo,
          package: 'google_fonts_arabic',
          color: Colors.grey,
          fontSize: 20.0,
        ),
      ),
      actions: <Widget>[
        new FlatButton(
          child: new Text(
            "ok",
            style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: ArabicFonts.Cairo,
              package: 'google_fonts_arabic',
              color: Colors.deepOrange,
              fontSize: 20.0,
            ),
          ),
          onPressed: () {
            AppSharedPreferences.clear();
            Navigator.popAndPushNamed(context, '/SplashPageLoginTow');
          },
        ),
        new FlatButton(
          child: new Text(
            "Cansel",
            style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: ArabicFonts.Cairo,
              package: 'google_fonts_arabic',
              color: Colors.deepOrange,
              fontSize: 20.0,
            ),
          ),
          onPressed: () {
            Navigator.of(globalKey.currentContext).pop();
          },
        ),
      ],
    );
  }
}
