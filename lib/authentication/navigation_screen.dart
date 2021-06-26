import 'package:bubble/authentication/login_screen.dart';
import 'package:bubble/authentication/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bubble/widgets/custom_widgets.dart';
import 'package:audioplayers/audio_cache.dart';




class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}


class _NavigationScreenState extends State<NavigationScreen> {

   _playAudio()  {
    final player = AudioCache();
    player.play('bubble.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: InteractiveViewer(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 25, top: 10),
                      child: Text(
                        "Bubble",
                        style: GoogleFonts.allura(
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                            color: Color(0xFF0059d4)),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(bottom: 20, left: 20),
                    child: Text(
                      "Power to connect",
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(bottom: 60, left: 20),
                    child: Text(
                      "Simple, Reliable and Safe. Connect\n to your friends easily.",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      _playAudio();
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return LoginScreen();
                      }));
                    },
                    child: MainButton(
                      borderColor: Colors.white,
                      buttonColor: Colors.white,
                      text: 'Log in',
                      textColor: Color(0xFF0059d4),
                      bottomMargin: 0.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      _playAudio();
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return RegisterScreen();
                      }));
                    },
                    child: MainButton(
                      borderColor: Colors.white,
                      buttonColor: Color(0xFF006bff),
                      text: 'Sign up',
                      textColor: Colors.white,
                      bottomMargin: 30.0,
                    ),
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
