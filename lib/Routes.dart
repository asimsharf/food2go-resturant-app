import 'package:flutter/material.dart';

import 'CompleteOrders.dart';
import 'NewOrders.dart';
import 'OrderDetails.dart';
import 'PendingOrders.dart';
import 'animations.dart';

final Routes = <String, WidgetBuilder>{
  '/OrderDetails': (BuildContext context) => OrderDetails(),
  '/NewOrders': (BuildContext context) => NewOrders(),
  '/PendingOrders': (BuildContext context) => PendingOrders(),
  '/ProjectApp': (BuildContext context) => ProjectApp(),
  '/CompleteOrders': (BuildContext context) => CompleteOrders(),
};
