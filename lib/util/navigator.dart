import 'package:demo_cubit/presentation/login/login_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic>? appRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
    }
  }
}
