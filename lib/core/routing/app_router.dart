import 'package:flutter/material.dart';
import 'package:walletly/core/routing/routes.dart';
import 'package:walletly/features/auth/presentation/views/sign_in_view.dart';
import 'package:walletly/features/auth/presentation/views/sign_up_view.dart';
import 'package:walletly/features/splash/presentation/views/on_splash_view.dart';
import 'package:walletly/features/transactions/presentation/pages/home_page.dart';
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
      case Routes.signUp:
        return MaterialPageRoute(builder: (context) => SignUpView());
      case Routes.signIn:
        return MaterialPageRoute(builder: (context) => SignInView());

      //
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
