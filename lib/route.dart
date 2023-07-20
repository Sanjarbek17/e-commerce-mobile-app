import 'package:flutter/material.dart';

import 'screens/screens.dart';

class RouteGenerator {
  static const String splashScreen = '/splashScreen';
  static const String welcomScreen = '/welcomScreen';
  static const String authenticationScreen = '/authenticationScreen';
  static const String homeScreen = '/homeScreen';
  static const String productScreen = '/productScreen';
  static const String cartScreen = '/cartScreen';
  static const String completeScreen = '/completeScreen';
  static const String trackingScreen = '/trackingScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case welcomScreen:
        return MaterialPageRoute(builder: (_) => const WelcomScreen());
      case authenticationScreen:
        return MaterialPageRoute(builder: (_) => const AuthenticationScreen());
      case homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case cartScreen:
        return MaterialPageRoute(builder: (_) => const CartScreen());
      case completeScreen:
        return MaterialPageRoute(builder: (_) => const CompleteScreen());
      case trackingScreen:
        return MaterialPageRoute(builder: (_) => const TrackingScreen());
      default:
        return MaterialPageRoute(builder: (_) => const ErrorScreen());
    }
  }
}
