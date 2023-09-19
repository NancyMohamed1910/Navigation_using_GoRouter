import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class MyThirdOne extends StatefulWidget {
  const MyThirdOne({super.key});

  @override
  State<MyThirdOne> createState() => _MyThirdOneState();
}

class _MyThirdOneState extends State<MyThirdOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('My third_1 screen'),
        ),
        body: Container(
          color: Colors.redAccent,
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
                    GoRouter.of(context).go('/second');
                  },
                  child: Text('Go to Second screen'),
                ),
              ],
            ),
          ),
        ));
  }
}
