import 'package:bubble/widgets/custom_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InteractiveViewer(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/authbackground.png'),
              fit: BoxFit.cover,
            ),
          ),
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 25, top: 10),
                      child: Text(
                        "Welcome Back",
                        style: GoogleFonts.allura(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MainButton(
                    bottomMargin: 30.00,
                    buttonColor: Color(0xFF006bff),
                    textColor: Colors.white,
                    text: 'Log in ',
                    borderColor: Color(0xFF006bff),
                  ),
                  // Or line is below wrapped in padding
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1,
                          width: MediaQuery. of(context). size. width/3,
                          color: Colors.grey,
                        ),
                        Text('  or  ', style: TextStyle(fontSize: 20),),
                        Container(
                          height: 1,
                          width: MediaQuery. of(context). size. width/3,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  MainButton(
                    bottomMargin: 30.00,
                    buttonColor: Colors.white,
                    textColor: Colors.black,
                    text: 'Sign up ',
                    borderColor: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
