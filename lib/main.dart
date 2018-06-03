import 'package:flutter/material.dart';
import 'root_page.dart';
import 'auth.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluter Auth App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: RootPage(
        auth: Auth(),
      ),
    );
  }
}
