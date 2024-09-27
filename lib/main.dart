import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:tpone/pages/AboutPage.dart';
import 'package:tpone/pages/HomePage.dart';
import 'package:tpone/widgets/Drawer.dart';

void main(){
  runApp(const monApp());
}
/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'home',
      builder: (BuildContext context, GoRouterState state) {
        return HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'about',
          name: 'about',
          builder: (BuildContext context, GoRouterState state) {
            return AboutPage();
          },
        ),
      ],
    ),
  ],
);

class monApp extends StatelessWidget {
  const monApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'TpOne',
      routerConfig: _router,
    );
  }
}