import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final double? fontSise;
  final Color? color;
  final FontWeight? fontWeight;

  const CustomText(
      {Key? key,
      this.text,
      this.color = Colors.white,
      this.fontSise,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      overflow: TextOverflow.clip,
      style: GoogleFonts.lato(
        color: color!,

        fontSize: fontSise,

        fontWeight: fontWeight,
        height: 1.4,
      ),
    );
  }
}
