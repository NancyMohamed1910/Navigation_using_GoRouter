import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';




class MyFirst extends StatefulWidget {
  const MyFirst({super.key});

  @override
  State<MyFirst> createState() => _MyFirstState();
}

class _MyFirstState extends State<MyFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'First Screen',
        ),
      ),
      body: Container(color: Colors.grey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Center(
              ElevatedButton(
                onPressed: () {GoRouter.of(context).go('/second');},
                child: Text('Go to second screen'),
              ),
              ElevatedButton(
                onPressed: () {GoRouter.of(context).go('/third');},
                child: Text('Go to third screen'),
              ),
              //),
            ],
          ),
        ),
      ),
    );
  }
}
