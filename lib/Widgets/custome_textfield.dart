import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metime/Constants/constant.dart';

class CustomeTextField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final int? maxLines;
  final bool? hidePassword;
  final bool? readOnly;

  const CustomeTextField({
    super.key,
    this.hintText,
    this.controller,
    this.maxLines,
    this.labelText,
    this.hidePassword,
    this.readOnly,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: Get.width,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: lightGreyColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: whiteColor),
      ),
      child: TextFormField(
        controller: controller,
        readOnly: readOnly != null || readOnly == true ? true : false,
        style: customFontStyle(
          fontSize: 14.0,
          color: blackColor,
        ),
        obscureText: hidePassword == null ? false : hidePassword!,
        maxLines: maxLines ?? 1,
        decoration: InputDecoration(
          hintText: hintText.toString(),
          border: InputBorder.none,
          isDense: true,
          // contentPadding: EdgeInsets.symmetric(horizontal: 5.0),
        ),
      ),
    );
  }
}
