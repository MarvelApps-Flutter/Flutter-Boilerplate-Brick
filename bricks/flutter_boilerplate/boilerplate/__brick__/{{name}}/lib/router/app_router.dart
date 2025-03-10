import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/views/screens/demo_home_page.dart';
import 'package:flutter_boilerplate/views/screens/demo_screen_2.dart';
import '../constants/routes_constant.dart';

class PageRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // How to navigate a screen with arguments.
      case AppRoutes.homePageRoute:
        String title = settings.arguments as String;
        return _getPageRoute(MyHomePage(title: title), settings);
      // Example for how to navigate a screen without arguments.
      case AppRoutes.demoPage:
        return _getPageRoute(const DemoPage(), settings);
      // Will be displayed if no specified route is found.
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => Scaffold(
            body: Center(
              child: Text('The Page ${settings.name} does not exists.'),
            ),
          ),
        );
    }
  }

  static PageRoute _getPageRoute(Widget child, RouteSettings settings) {
    return _FadeRoute(
        child: child, routeName: settings.name!, arguments: settings.arguments);
  }
}

class _FadeRoute extends PageRouteBuilder {
  final Widget? child;
  final String? routeName;
  final Object? arguments;

  _FadeRoute({this.child, this.routeName, this.arguments})
      : super(
          settings: RouteSettings(name: routeName, arguments: arguments),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child!,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            // Turned off animation
            opacity: const AlwaysStoppedAnimation<double>(1),
            // replace above with 'animation' to enable fade animation
            child: child,
          ),
        );
}

class NoAnimationMaterialPageRoute<T> extends MaterialPageRoute<T> {
  NoAnimationMaterialPageRoute({
    required super.builder,
    required RouteSettings super.settings,
    super.maintainState,
    super.fullscreenDialog,
  });

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    var animation1 = Tween(begin: 0.0, end: 0.0).animate(animation);

    final theme = Theme.of(context).pageTransitionsTheme;
    return theme.buildTransitions<T>(
      this,
      context,
      animation1,
      secondaryAnimation,
      child,
    );
  }
}
