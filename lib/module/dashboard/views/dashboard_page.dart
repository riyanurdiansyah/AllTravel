import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  static const String route = 'DashboardPage';
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
