import 'package:all_travel/module/auth/provider/login_provider.dart';
import 'package:all_travel/module/dashboard/views/dashboard_page.dart';
import 'package:all_travel/utils/flushbar.dart';
import 'package:all_travel/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  static const String route = 'LoginPage';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<LoginProvider>(context, listen: false);
    ScreenScaler scaler = ScreenScaler()..init(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blue[900], Colors.blue[400]])),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: scaler.getHeight(4)),
              margin: EdgeInsets.all(
                scaler.getWidth(4),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi...",
                        style: GoogleFonts.berkshireSwash(
                          color: Colors.white,
                          fontSize: scaler.getTextSize(14),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Allvelers",
                        style: GoogleFonts.berkshireSwash(
                          color: Colors.white,
                          fontSize: scaler.getTextSize(14),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: scaler.getWidth(25),
                        child: Divider(
                          color: Colors.white,
                          thickness: 2,
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: scaler.getHeight(65),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: scaler.getHeight(6),
                          ),
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              height: scaler.getHeight(14),
                              width: scaler.getWidth(80),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextField(
                                    controller: _provider.emailController,
                                    style: GoogleFonts.nunito(
                                      fontSize: scaler.getTextSize(12),
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.email_rounded),
                                      hintText: "your@example.co",
                                      hintStyle: GoogleFonts.nunito(
                                        fontSize: scaler.getTextSize(12),
                                        color: Colors.grey,
                                      ),
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide.none),
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.grey,
                                  ),
                                  TextField(
                                    controller: _provider.passwordController,
                                    obscureText: _provider.isObsecure,
                                    style: GoogleFonts.nunito(
                                      fontSize: scaler.getTextSize(12),
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        icon: Icon(_provider.obsecureIcon),
                                        onPressed: () {
                                          setState(() {
                                            _provider.fnObsecure();
                                          });
                                        },
                                      ),
                                      prefixIcon: Icon(Icons.vpn_key),
                                      hintText: "********",
                                      hintStyle: GoogleFonts.nunito(
                                        fontSize: scaler.getTextSize(12),
                                        color: Colors.grey,
                                      ),
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide.none),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            right: scaler.getWidth(3),
                            top: scaler.getHeight(2),
                          ),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: AppText.normalWhiteText(
                              "Forgot password?",
                              scaler.getTextSize(10),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: scaler.getHeight(3.8),
                            width: scaler.getWidth(50),
                            margin: EdgeInsets.only(
                              top: scaler.getHeight(8),
                            ),
                            child: OutlinedButton(
                                onPressed: () {
                                  if (_provider.emailController.text.isEmpty) {
                                    FlushbarMsg.dialog(context, "ERROR",
                                        "Email cannot be empty!");
                                  } else if (RegExp(
                                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(
                                              _provider.emailController.text) ==
                                      false) {
                                    FlushbarMsg.dialog(context, "ERROR",
                                        "Email is not valid!");
                                  } else if (_provider
                                      .passwordController.text.isEmpty) {
                                    FlushbarMsg.dialog(context, "ERROR",
                                        "Password cannot be empty!");
                                  } else if (_provider
                                          .passwordController.text.length <
                                      8) {
                                    FlushbarMsg.dialog(context, "ERROR",
                                        "Password is too short");
                                  } else {
                                    _provider.emailController.text = "";
                                    _provider.passwordController.text = "";

                                    Navigator.pushNamed(
                                        context, DashboardPage.route);
                                  }
                                },
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(
                                      BorderSide(color: Colors.white)),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "LOGIN",
                                  style: GoogleFonts.amaranth(
                                    fontSize: scaler.getTextSize(12),
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: scaler.getHeight(4),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppText.normalBlackText(
                              "Don't have account?",
                              scaler.getTextSize(10),
                            ),
                            GestureDetector(
                              child: AppText.boldWhiteText(
                                " Register",
                                scaler.getTextSize(10),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
