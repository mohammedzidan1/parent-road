import 'package:flutter/material.dart';
import 'package:parentroad/widgets/custom_text.dart';
import '../../sheard/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_form_feild.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: ColorsApp.white,
       elevation: 0.0,
      ),
      body: Container(
          height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              "assets/images/img_3.png",
            ),
          ),
        ),
        //margin: const EdgeInsets.only(top: 120),
        padding: const EdgeInsets.only(top: 90, left: 12),
        child: SingleChildScrollView(
          physics:const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "child's name",
                color: ColorsApp.primaryColor,
                fontSise: 24,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextField(
                color: ColorsApp.white,
              ),
              CustomText(
                text: "Gender",
                color: ColorsApp.primaryColor,
                fontSise: 24,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextField(
                color: ColorsApp.white,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomText(
                text: "Age of the child",
                color: ColorsApp.primaryColor,
                fontSise: 24,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextField(
                color: ColorsApp.white,
                keyBordType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text: "create password",
                color: ColorsApp.primaryColor,
                fontSise: 24,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextField(
                color: ColorsApp.white,
              ),
              const SizedBox(
                height: 10,
              ),
              // CustomText(
              //   text: "Email",
              //   color: ColorsApp.primaryColor,
              //   fontSise: 24,
              //   fontWeight: FontWeight.w500,
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // const CustomTextField(
              //   color: ColorsApp.white,
              //   keyBordType: TextInputType.emailAddress,
              // ),
              SizedBox(
                height: 38,
              ),
              Center(
                child: CustomButton(
                  text: "REGISTRATION",
                  height: 64,
                  width: 247,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
