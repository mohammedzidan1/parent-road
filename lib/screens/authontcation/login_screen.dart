import 'package:flutter/material.dart';
import 'package:parentroad/sheard/app_colors.dart';
import 'package:parentroad/widgets/custom_button.dart';
import 'package:parentroad/widgets/custom_text_form_feild.dart';

import '../../widgets/custom_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.white,
        elevation: 0.0,
        leading: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: ColorsApp.mainTextColor,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: ColorsApp.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/img_2.png"),
          ),
        ),
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Welcome Back",
              color: ColorsApp.mainTextColor,
              fontSise: 32,
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              text: "Enter Your Password & Email",
              color: ColorsApp.mainTextColor,
              fontSise: 24,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 150,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                children: const [
                  CustomTextField(
                    text: "Email",
                 color:ColorsApp.white,

                    keyBordType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    text: "password",
                    color:ColorsApp.white,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const CustomButton(
                    width: 230,
                    height: 51,
                    text: "LOGIN",
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomText(
                    text: "Forget the password ! ",
                    color: ColorsApp.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSise: 15,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    text: "Or Create a New account! ",
                    color: ColorsApp.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSise: 15,
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
