import 'package:flutter/material.dart';

class HURouter {
  HURouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch(settings.name) {
      // TODO: Handle routing
      default:
        return _createRoute(const Placeholder());
    }
  }


  // Custom routing styles

  static MaterialPageRoute _createRoute(Widget screen) {
    return MaterialPageRoute(
      builder: (context) => screen,
    );
  }

  static PageRouteBuilder _createFadeAnimationRoute(Widget screen) {
    return PageRouteBuilder(
      pageBuilder: (c, a, a2) => screen,
      transitionsBuilder: (context, anim, anim2, child) => FadeTransition(
        opacity: anim,
        child: child,
      ),
      transitionDuration: const Duration(milliseconds: 100),
    );
  }

  static PageRouteBuilder _createSlideAnimationRoute(Widget screen) {
    return PageRouteBuilder(
      pageBuilder: (c, a, a2) => screen,
      transitionsBuilder: (c, anim, anim2, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: anim.drive(tween),
          child: child,
        );
      },
    );
  }
}