import 'package:all_travel/module/auth/provider/login_provider.dart';
import 'package:all_travel/module/dashboard/provider/dashboard_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildStatelessWidget> providers = [
  ...independentServices,
  ...dependentServices,
];

List<SingleChildStatelessWidget> independentServices = [
  ChangeNotifierProvider(create: (context) => LoginProvider()),
  ChangeNotifierProvider(create: (context) => DashboardProvider()),
];

// for proxy provider
List<SingleChildStatelessWidget> dependentServices = [];

abstract class BaseProvider implements SingleChildStatelessWidget {}
