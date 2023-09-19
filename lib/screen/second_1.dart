import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MySecondOne extends StatefulWidget {
  const MySecondOne({super.key});

  @override
  State<MySecondOne> createState() => _MySecondOneState();
}

class _MySecondOneState extends State<MySecondOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('My second_1 screen'),
        ),
        body: Container(
          color: Colors.lightBlueAccent,
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
              ],
            ),
          ),
        ));
  }
}
