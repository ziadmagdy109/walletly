import 'package:flutter/material.dart';
import 'package:walletly/core/routing/routes.dart';
import 'package:walletly/features/onSplash/presentation/views/on_splash_view.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onSplashView:
        return MaterialPageRoute(builder: (context) => OnSplashView());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(title: Text("Page Not Found")),
            body: Center(
              child: Text("The page '${settings.name}' does not exist."),
            ),
          ),
        );
    }
  }
}
