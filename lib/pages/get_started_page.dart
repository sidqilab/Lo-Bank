import 'package:flutter/material.dart';
import 'package:lobank/components/theme.dart';
import 'package:lobank/widgets/custom_button.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 310,
              height: 398,
              margin: const EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_get_started.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Effortless.\nIntegrated app.',
                    style: blackTextStyle.copyWith(
                      fontSize: 28,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CustomButton(
                                title: 'Sign In',
                                valueColor: kGreenButtonColor,
                                width: 155,
                                height: 45,
                                margin: const EdgeInsets.only(
                                  top: 50,
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/sign-in');
                                },
                              ),
                              const SizedBox(
                                width: 17,
                              ),
                              CustomButton(
                                title: 'Get Started',
                                valueColor: kPrimaryColor,
                                width: 155,
                                height: 45,
                                margin: const EdgeInsets.only(
                                  top: 50,
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/main');
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
