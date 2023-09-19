import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MySecondTwo extends StatefulWidget {
  const MySecondTwo({super.key});

  @override
  State<MySecondTwo> createState() => _MySecondTwoState();
}

class _MySecondTwoState extends State<MySecondTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('My second_2 screen'),
        ),
        body: Container(
          color: Colors.yellowAccent,
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
