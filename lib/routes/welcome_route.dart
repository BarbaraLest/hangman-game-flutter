import 'package:flutter/material.dart';
import 'package:hangman_game/routes/home_route.dart';

class WelcomeRoute extends StatefulWidget {
  const WelcomeRoute({Key? key}) : super(key: key);

  @override
  _WelcomeRouteState createState() => _WelcomeRouteState();
}

class _WelcomeRouteState extends State<WelcomeRoute> {
  bool _checkBoxIsChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Bem vindo',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Marcar como lido',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5),
                    Checkbox(
                      value: this._checkBoxIsChecked,
                      onChanged: (status) {
                        setState(() {
                          this._checkBoxIsChecked = status!;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeRoute()),
                  ),
                  child: Text(
                    "Disable button",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
