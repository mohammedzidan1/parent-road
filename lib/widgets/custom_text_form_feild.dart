import 'package:flutter/material.dart';
import 'package:parentroad/sheard/app_colors.dart';
import 'package:parentroad/widgets/custom_text.dart';

class CustomTextField extends StatelessWidget {
  final String? initValue;
  final String? text;

  final double? width;
  final double? hight;
  final TextInputType? keyBordType;
  final Color? color;
  final bool? readOnly;
  final bool? isPassward;

  final TextEditingController? controller;
  final Function? onTap;

  final Function? suffixOnTap;
  final Function? validation;

  final Function? onChanged;

  const CustomTextField(
      {Key? key,
      this.validation,
      this.hight = 30,
      this.text,
      this.isPassward = false,
      this.keyBordType = TextInputType.text,
      this.suffixOnTap,
      this.onTap,
      this.initValue = '',
      this.onChanged,
      this.controller,
      this.color,
      this.width = 300,
      this.readOnly = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      child: Container(
          width: width,
          height: hight,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: TextFormField(
              // initialValue: initValue!,
              readOnly: readOnly!,
              keyboardType: keyBordType,
              controller: controller,
              validator: (value) {
                validation;
              },
              onTap: () {
                onTap!();
              },
              obscureText: isPassward!,
              cursorColor: Colors.grey,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ))),
    );
  }
}
