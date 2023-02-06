
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:study_navigator_and_route/home_screen.dart';
import 'package:study_navigator_and_route/rou/route_name.dart';
import 'package:study_navigator_and_route/second_screen.dart';
import 'package:study_navigator_and_route/third_screen.dart';

class Routes {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());

      case RoutesName.secondScreen:
        return MaterialPageRoute(builder: (context) => SecondScreen(data: settings.arguments as Map,));

        case RoutesName.thirdScreen:
        return MaterialPageRoute(builder: (context) => ThirdScreen());

      default:
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            body: Text('not defined'),
          );
        }
        );
    }
  }
}
