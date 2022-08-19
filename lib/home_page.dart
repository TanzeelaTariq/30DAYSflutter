import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Sample App')),
      ),
      drawer: Drawer(
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Container(
          child: Text('Welcome to $days days of flutter by $name'),
        ),
      ),
    );
  }
}
