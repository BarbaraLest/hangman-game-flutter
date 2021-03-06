import 'package:flutter/material.dart';
import 'package:hangman_game/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  static setWelcomeRead({@required bool? status}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setBool(kWelcomeRead, status!);
  }

  static getWelcomeRead() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getBool(kWelcomeRead) ?? false;
  }
}
