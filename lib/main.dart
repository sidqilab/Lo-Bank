import 'package:flutter/material.dart';
import 'package:lobank/pages/get_started_page.dart';
import 'package:lobank/pages/main_page.dart';
import 'package:lobank/pages/sign_in_page.dart';
import 'package:lobank/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/get-started': (context) => const GetStartedPage(),
        '/sign-in': (context) => const SignInPage(),
        '/main': (context) => const MainPage(),
      },
    );
  }
}
