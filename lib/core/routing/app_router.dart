import 'package:flutter/material.dart';
import 'package:walletly/core/routing/routes.dart';
import 'package:walletly/features/home/presentation/views/home_view.dart';
import 'package:walletly/features/onSplash/presentation/views/on_splash_view.dart';
import 'package:walletly/main_layout.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onSplashView:
        return MaterialPageRoute(builder: (context) => OnSplashView());
      case Routes.home:
        return MaterialPageRoute(builder: (context) => HomeView());
      case Routes.mainLayout:
        return MaterialPageRoute(builder: (context) => MainLayout());
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
