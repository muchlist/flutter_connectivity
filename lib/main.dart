import 'package:flutter/material.dart';

import 'connection_widget.dart';

void main() => runApp(DemoApp());

class DemoApp extends StatelessWidget {
  const DemoApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Checking the connection"),
          ),
          body: const Center(
            child: ConnectionWidget(),
          )),
    );
  }
}
