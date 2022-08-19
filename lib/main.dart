import 'package:catalogapp/home_page.dart';
import 'package:catalogapp/login_page.dart';
import 'package:catalogapp/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyAppp());
}

class MyAppp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        '/': (context) => LoginPage(),
        MyRoutes.homeRoutes: (context) => Homepage(),
        MyRoutes.loginRoutes: (context) => LoginPage(),
      },
    );
  }
}
