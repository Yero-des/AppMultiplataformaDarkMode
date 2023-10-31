import 'package:flutter/material.dart';
import 'package:semana9/screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'card';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const NotFoundScreen());
  }

}