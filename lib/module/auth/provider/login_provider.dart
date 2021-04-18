import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _isObsecure = true;

  bool get isObsecure => _isObsecure;

  IconData _obsecureIcon = Icons.visibility_off_outlined;

  IconData get obsecureIcon => _obsecureIcon;

  void fnObsecure() {
    _isObsecure = !_isObsecure;

    _obsecureIcon = _isObsecure == true
        ? Icons.visibility_off_outlined
        : Icons.visibility_outlined;
  }
}
