import 'package:demo_cubit/presentation/screens/counter_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic>? appRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => CounterScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => CounterScreen(),
        );
    }
  }
}
