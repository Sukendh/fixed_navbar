import 'package:fixed_navbar/pages/page_one.dart';
import 'package:fixed_navbar/pages/page_three.dart';
import 'package:fixed_navbar/pages/page_two.dart';
import 'package:flutter/material.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

class TabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState>? navigatorKey;
  final String? tabItem;
  TabNavigator({this.navigatorKey, this.tabItem});

  @override
  Widget build(BuildContext context) {
    Widget? child;
    if (tabItem == "Page1") {
      child = const PageOne(
        color: Colors.red,
        title: "dfsdf",
      );
    } else if (tabItem == "Page2") {
      child = const PageTwo(
        color: Colors.green,
        title: "sdsd",
      );
    } else if (tabItem == "Page3") {
      child = const PageThree(
        color: Colors.blue,
        title: "sdsds",
      );
    }

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => child!);
      },
    );
  }
}
