
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metime/Constants/constant.dart';

void showCustomSnackBar(String message, {bool isError = false}) {
  if (message.isNotEmpty) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
      dismissDirection: DismissDirection.horizontal,
      margin: const EdgeInsets.all(10),
      duration: const Duration(seconds: 3),
      backgroundColor: isError ? Colors.red : Colors.green,
      behavior: SnackBarBehavior.floating,

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
      content: Text(message, style: whiteFontStyle(fontSize: 14.0, fontWeight: FontWeight.w500)),
    ));
  }
}
