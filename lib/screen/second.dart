import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MySecond extends StatefulWidget {
  const MySecond({super.key});

  @override
  State<MySecond> createState() => _MySecondState();
}

class _MySecondState extends State<MySecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('My second screen'),
        ),
        body: Container(
          color: Colors.greenAccent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).go('/');
                  },
                  child: Text('Back to main screen'),
                ),
                ElevatedButton(
                  onPressed: () {
                     GoRouter.of(context).go('/second/second1');
                  },
                  child: Text('Go to Second_1 screen'),
                ),
                ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).go('/second/second2');
                  },
                  child: Text('Go to Second_2 screen'),
                ),
              ],
            ),
          ),
        ));
  }
}
