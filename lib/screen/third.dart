import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyThird extends StatefulWidget {
  const MyThird({super.key});

  @override
  State<MyThird> createState() => _MyThirdState();
}

class _MyThirdState extends State<MyThird> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('My third screen'),
        ),
        body: Container(
          color: Colors.orange,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {GoRouter.of(context).go('/');},
                  child: Text('Back to main screen'),
                ),
                ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).go('/third/third1');
                  },
                  child: Text('Back to Third_1 screen'),
                ),
              ],
            ),
          ),
        ));
  }
}
