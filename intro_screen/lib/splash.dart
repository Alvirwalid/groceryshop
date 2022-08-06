import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intro_screen/item.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 4), () {
      Route route = MaterialPageRoute(builder: (_) {
        return Item();
      });
      Navigator.of(context).pushReplacement(route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xffF9911E),
              Color(0xffF79321),
              Color(0xffF2A334),
              Color(0xffEEAC3E),
              Color(0xffF9911E),
              Color(0xffEDB141),
              Color(0xffE0C85A),
              Color(0xffE0CF63),
              Color(0xffE4C85D),
            ])),
        child: Center(
          child: Image.asset(
            './images/splash.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ),
      ),
    );
  }
}
