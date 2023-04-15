import 'package:flutter/material.dart';
import 'package:metime/Constants/constant.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final Function()? onPressed;
  final double? width;
  final double? height;
  final Color? color;

  const CustomButton({super.key, this.color, this.text, this.onPressed,this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.orange,
      height: height ?? 40,
      minWidth: width,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Text(
        text!,
        style: whiteFontStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
