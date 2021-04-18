import 'package:all_travel/module/auth/provider/login_provider.dart';
import 'package:all_travel/module/auth/views/login_page.dart';
import 'package:all_travel/module/dashboard/views/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const bool isProduction = bool.fromEnvironment('dart.vm.product');
void main() {
  if (isProduction) {
    debugPrint = (String message, {int wrapWidth}) {};
  }
  runApp(AllTravel());
}

class AllTravel extends StatefulWidget {
  @override
  _AllTravelState createState() => _AllTravelState();
}

class _AllTravelState extends State<AllTravel> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.route,
      routes: {
        LoginPage.route: (context) => ChangeNotifierProvider<LoginProvider>(
              create: (context) => LoginProvider(),
              child: LoginPage(),
            ),
        DashboardPage.route: (context) => ChangeNotifierProvider<LoginProvider>(
              create: (context) => LoginProvider(),
              child: DashboardPage(),
            ),
      },
    );
  }
}
