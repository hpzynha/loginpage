import 'package:flutter/material.dart';
import 'package:login/constants.dart';
import 'package:login/screen/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //delayed 3 seconds to next page
    var duration = Duration(seconds: 3);
    Future.delayed(duration, () {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
        builder: (context) {
          return HomeScreen();
        },
      ), (route) => false);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: mPrimaryColor,
        ),
        child: Center(
          child: Image.asset(
            'assets/images/worldwide.png',
            height: 100,
            width: 100,
            color: mBackgroundColor,
          ),
        ),
      ),
    );
  }
}
