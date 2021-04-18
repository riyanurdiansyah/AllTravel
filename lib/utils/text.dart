import 'package:all_travel/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText {
  static Text normalPrimaryText(
    String txt,
    double txtSize,
  ) {
    return Text(
      txt,
      style: GoogleFonts.nunito(
        color: AppColors.primaryColor,
        fontSize: txtSize,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  static Text normalBlackText(
    String txt,
    double txtSize,
  ) {
    return Text(
      txt,
      style: GoogleFonts.nunito(
        color: Colors.black,
        fontSize: txtSize,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  static Text normalWhiteText(
    String txt,
    double txtSize,
  ) {
    return Text(
      txt,
      style: GoogleFonts.nunito(
        color: Colors.white,
        fontSize: txtSize,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  static Text normalGreyText(
    String txt,
    double txtSize,
  ) {
    return Text(
      txt,
      style: GoogleFonts.nunito(
        color: Colors.grey,
        fontSize: txtSize,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  static Text boldBlackText(
    String txt,
    double txtSize,
  ) {
    return Text(
      txt,
      style: GoogleFonts.nunito(
        color: Colors.black,
        fontSize: txtSize,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  static Text boldPrimaryText(
    String txt,
    double txtSize,
  ) {
    return Text(
      txt,
      style: GoogleFonts.nunito(
        color: AppColors.primaryColor,
        fontSize: txtSize,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  static Text boldWhiteText(
    String txt,
    double txtSize,
  ) {
    return Text(
      txt,
      style: GoogleFonts.nunito(
        color: Colors.white,
        fontSize: txtSize,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
