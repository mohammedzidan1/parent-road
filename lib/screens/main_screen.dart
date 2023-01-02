import 'package:flutter/material.dart';
import 'package:parentroad/screens/authontcation/information_screen.dart';
import 'package:parentroad/sheard/app_colors.dart';
import 'package:parentroad/widgets/custom_button.dart';
import 'package:parentroad/widgets/custom_text.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Image(image: AssetImage("assets/images/logo.png")),
            CustomText(
              text: "Let's Get ",
              fontSise: 40,
              fontWeight: FontWeight.bold,
              color: ColorsApp.mainTextColor,
            ),
            CustomText(
              text: "Started",
              fontSise: 40,
              fontWeight: FontWeight.bold,
              color: ColorsApp.mainTextColor,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomText(
              text: "Grow Together",
              fontSise: 16,
              color: ColorsApp.mainTextColor,
            ),
            const SizedBox(
              height: 60,
            ),
            CustomButton(
              ontap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InformationScreen()));
              },
              text: "JOIN NOW",
            )
          ],
        ),
      ),
    );
  }
}
