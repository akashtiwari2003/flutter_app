import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Akash";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Application"),
      ),
      body: Center(
        child: Container(
            child: Text('MIA'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
