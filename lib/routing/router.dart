import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_website_demo/views/home/home_view.dart';
import 'package:flutter_ecommerce_website_demo/views/login/login_view.dart';
import 'package:flutter_ecommerce_website_demo/views/register/register_view.dart';

PageRoute generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case 'home':
      return _getPageRoute(const HomeView());
    case 'register':
      return _getPageRoute(const RegisterView());
    case 'login':
      return _getPageRoute(const LoginView());
    default:
      return _getPageRoute(const HomeView());
  }
}

PageRoute _getPageRoute(Widget child) => _FadeRoute(
      page: child,
    );

class _FadeRoute extends PageRouteBuilder {
  final Widget page;
  _FadeRoute({required this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
        );
}
