import 'package:bubble/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainButton extends StatelessWidget {
  MainButton({this.borderColor, this.buttonColor, this.text, this.textColor, required this.bottomMargin});
  final borderColor;
  final buttonColor;
  final textColor;
  final text;
  final double bottomMargin;



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: bottomMargin),
      alignment: Alignment.center,
      child: Text(text, style: GoogleFonts.lato(
          fontSize: 20,
          color: textColor,
          fontWeight: FontWeight.bold
      ),),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: borderColor),
          color: buttonColor
      ),
    );
  }
}