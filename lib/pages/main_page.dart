import 'package:flutter/material.dart';
import 'package:lobank/components/theme.dart';
import 'package:lobank/pages/home_page.dart';
import 'package:lobank/widgets/custom_bottom_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return const HomePage();
    }

    Widget scanFile() {
      return Container(
        width: 55,
        height: 55,
        padding: const EdgeInsets.all(23),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(100),
          image: const DecorationImage(
            scale: 5,
            image: AssetImage('assets/icon_scan.png'),
          ),
        ),
      );
    }

    Widget customBottomNavigation() {
      return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 60,
            margin: EdgeInsets.only(
              left: defaultMargin,
              right: defaultMargin,
              bottom: 5,
            ),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CustomBottomNavigationItem(
                  imageUrl: 'assets/icon_home.png',
                  isSelected: true,
                ),
                const CustomBottomNavigationItem(
                  imageUrl: 'assets/icon_calendar.png',
                ),
                scanFile(),
                const CustomBottomNavigationItem(
                  imageUrl: 'assets/icon_briefcase.png',
                ),
                const CustomBottomNavigationItem(
                  imageUrl: 'assets/icon_settings.png',
                ),
              ],
            ),
          ));
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
