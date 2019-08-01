import 'package:flutter/material.dart';
import 'package:resturant/Home.dart';
import 'package:resturant/LoginClients/pages/splash_page.dart';
import 'package:resturant/ProfilePage.dart';

import 'About.dart';
import 'OrderDetails.dart';
import 'Support.dart';

final Routes = <String, WidgetBuilder>{
  '/Home': (BuildContext context) => Home(),
  '/ProfilePage': (BuildContext context) => ProfilePage(),
  '/OrderDetails': (BuildContext context) => OrderDetails(),
  '/SplashPageLoginTow': (BuildContext context) => SplashPageLoginTow(),
  '/Support': (BuildContext context) => Support(),
  '/About': (BuildContext context) => About(),
};
