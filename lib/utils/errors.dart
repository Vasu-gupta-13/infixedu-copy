// Flutter imports:
import 'package:flutter/material.dart';
import 'package:infixedu_copy/config/app_config.dart';

// Project imports:

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppConfig.loginBackground),
                    fit: BoxFit.fill,
                  )),
              child: Center(
                child: Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppConfig.appLogo),
                      )),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: const <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Invalid Purchase. Please activate from your server.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.pinkAccent, fontSize: 24.0),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
