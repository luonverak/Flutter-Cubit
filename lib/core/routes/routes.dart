import 'package:demo_cubit/presentation/auth/login_screen.dart';
import 'package:demo_cubit/presentation/home/home_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic>? appRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
      case HomeScreen.routeHomeScreen:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
    }
  }
}
