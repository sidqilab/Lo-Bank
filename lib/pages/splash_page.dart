import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:lobank/components/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.pushNamed(context, '/get-started');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/image_splash.json',
              width: 300,
              height: 300,
            ),
            Text(
              'E-Pay',
              style: whiteTextStyle.copyWith(
                fontSize: 50,
                fontWeight: bold,
                letterSpacing: 10,
                color: const Color(0xff9823F3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
