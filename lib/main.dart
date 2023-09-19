
import 'package:flutter/material.dart';
import 'package:navigation_go_router_example/screen/first.dart';
import 'package:navigation_go_router_example/screen/second.dart';
import 'package:navigation_go_router_example/screen/second_1.dart';
import 'package:navigation_go_router_example/screen/second_2.dart';
import 'package:navigation_go_router_example/screen/third.dart';
import 'package:navigation_go_router_example/screen/third_1.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

//------------------------------
// using go_router
final GoRouter routePath = GoRouter(initialLocation: '/', routes: [
  GoRoute(path: '/', builder: (context, state) => const MyFirst(), routes: [
    GoRoute(path: 'second', builder: (context, state) => MySecond(), routes: [
      GoRoute(path: 'second1', builder: (context, state) => MySecondOne()),
      GoRoute(path: 'second2', builder: (context, state) => MySecondTwo()),
    ]),
    GoRoute(path: 'third', builder: (context, state) => MyThird(), routes: [
      GoRoute(path: 'third1', builder: (context, state) => MyThirdOne())
    ]),
  ]),
]);

//-------------------
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: routePath,
    );
  }
}
