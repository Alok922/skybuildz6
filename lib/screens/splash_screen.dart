import 'package:flutter/material.dart';
import 'dart:async';
import 'package:skybuildz/screens/phone_screen.dart';
import 'package:skybuildz/app.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );

    controller.forward();

    controller.addListener(() {
      setState(() {});
    });

    _mockCheckForSession().then((status) {
      if (status) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => App()));
      }
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 4500), () {});
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Opacity(
              opacity: 0.2,
              child: Image.asset(
                'assets/img/bg.png',
                fit: BoxFit.fill,
                height: double.infinity,
                width: double.infinity,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(20),
                    child: Opacity(
                        opacity: controller.value,
                        child: Image.asset('assets/img/5.png'))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
