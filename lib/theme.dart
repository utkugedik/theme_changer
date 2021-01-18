import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedTheme(
      data: Theme.of(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic Theme Changeer'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                onPressed: () {
                  AdaptiveTheme.of(context).setDark();
                },
                child: Text('Dark Theme'),
              ),
              FlatButton(
                onPressed: () {
                  AdaptiveTheme.of(context).setLight();
                },
                child: Text('Light Theme'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
