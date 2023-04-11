import 'package:flutter/material.dart';
import '/weidget/event.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 91, 202, 206),
      appBar: AppBar(
        leading: const Padding(
            padding: EdgeInsets.all(1.0),
            child: IconButton(
              icon: Icon(color: Colors.white, Icons.menu),
              tooltip: 'Navigation menu',
              onPressed: null,
            )),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.teal,
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
        title: const Text('CIS Team'),
      ),
      body: const Event(),
    );
  }
}
