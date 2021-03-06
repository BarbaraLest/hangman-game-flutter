import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hangman_game/routes/drawer_route.dart';
import 'package:hangman_game/routes/welcome_route.dart';
import 'package:hangman_game/utils/shared_preferences/app_preferences.dart';
import 'package:hangman_game/utils/widgets/circular_image_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      WidgetsBinding.instance!.addPostFrameCallback((_) {
        AppPreferences.getWelcomeRead().then((status) {
          _whereToNavigate(welcomeRead: status);
        });
      });
    });
  }

  _whereToNavigate({@required bool? welcomeRead}) {
    if (welcomeRead!) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DrawerRoute()),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WelcomeRoute()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[300],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircularImageWidget(
            imageProvider: AssetImage('assets/images/splash2.png'),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 200, bottom: 25.0),
                child: Text(
                  "Carregando...",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 100.0, right: 100.0),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.deepPurple,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(Colors.deepPurpleAccent),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
