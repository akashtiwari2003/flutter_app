import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Akash";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Catalog App"),
        )
      ),
      body: Center(
        child: Container(
          child: Text('Welcome to $days days of flutter by $name'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
