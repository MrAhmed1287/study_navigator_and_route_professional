import 'package:flutter/material.dart';
import 'package:study_navigator_and_route/home_screen.dart';
import 'package:study_navigator_and_route/rou/route_name.dart';
import 'package:study_navigator_and_route/rou/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
initialRoute: RoutesName.homeScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
