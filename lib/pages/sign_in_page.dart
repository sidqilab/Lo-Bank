import 'package:flutter/material.dart';
import 'package:lobank/components/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Sign In Page',
          style: blackTextStyle.copyWith(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
