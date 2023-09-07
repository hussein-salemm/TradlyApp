import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tradly_app/constants.dart';
import 'package:tradly_app/widgets/circle_avatar.dart';
import 'package:tradly_app/widgets/custom_botton.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 350,
              color: kprimaryColor,
            ),
            Positioned(
              left: 50,
              top:170,
              child: SvgPicture.asset(
                'assets/images/onboarding3.svg',
              ),
            ),
          ],
        ),
        const Spacer(flex: 6),
        const Text('Donate, Invest & Support',
            style: TextStyle(
                color: kprimaryColor,
                fontSize: 28,
                fontWeight: FontWeight.w400)),
        const Text('infrastructure projects',
            style: TextStyle(
                color: kprimaryColor,
                fontSize: 28,
                fontWeight: FontWeight.w400)),
        const Spacer(flex: 1),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            circleAvatar(),
            SizedBox(width: 10),
            circleAvatar(),
            SizedBox(width: 10),
            circleAvatar(isActive: true),
          ],
        ),
        const Spacer(flex: 1),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomBottom(bottomTitle: 'Finish'),
        ),
        const Spacer(flex: 1),
      ],
    ));
  }
}