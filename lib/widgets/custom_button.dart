

import 'package:flutter/material.dart';

import '../sheard/app_colors.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final Function? ontap;
  final String? text;
  final Color? color;
  final double? height;
  final double? width;
  final double? radius;

  const CustomButton(
      {Key? key,
        this.text,
        this.color,
        this.radius = 33,
        this.ontap,
        this.height = 60,
        this.width = 290})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ontap!();
      },
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
            color: ColorsApp.primaryColor,
            //  border: Border.all(color: Colors.grey)
          ),
          child: Center(
            child: CustomText(
              text: text,
              fontSise: 20,
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }
}