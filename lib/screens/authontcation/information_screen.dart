import 'package:flutter/material.dart';
import 'package:parentroad/screens/authontcation/login_screen.dart';
import 'package:parentroad/screens/authontcation/sign_up_screen.dart';

import '../../sheard/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/img_1.png"),
          ),
        ),
        margin: const EdgeInsets.only(top: 40),
        padding: const EdgeInsets.only(left: 11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: const [
                SizedBox(
                    width: 200,
                    child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img.png"))),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            CustomText(
              text: "Parent Road",
              fontSise: 40,
              fontWeight: FontWeight.bold,
              color: ColorsApp.primaryColor,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomText(
              text:
              "Here is the best and fastost way to know the"
                  " condition of your child, it isa program to talk "
                  "to a robot and access to an initial "
                  "diagnosis and obtain medical assistance",
              fontSise: 20,
              fontWeight: FontWeight.normal,
              color: ColorsApp.black,
            ),
            const SizedBox(
              height: 160,
            ),
            Column(
              children: [
                Center(
                  child: CustomButton(
                    width: 204,
                    height: 62,
                    ontap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    text: "LOGIN",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: CustomButton(
                    width: 204,
                    height: 62,
                    ontap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));
                    },
                    text: "SIGN-UP",
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}