import 'package:e_commerce_mobile_app/route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xFFFFA451,
          {
            50: Color(0xFFFFF3E0),
            100: Color(0xFFFFE0B2),
            200: Color(0xFFFFCC80),
            300: Color(0xFFFFB74D),
            400: Color(0xFFFFA726),
            500: Color(0xFFFFA451),
            600: Color(0xFFFF8F00),
            700: Color(0xFFFF6F00),
            800: Color(0xFFFF5722),
            900: Color(0xFFF4511E),
          },
        ),
      ),
      initialRoute: RouteGenerator.splashScreen,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
