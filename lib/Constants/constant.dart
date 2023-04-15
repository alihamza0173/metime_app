import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Color primaryColor = Colors.orange;
Color secondaryColor = const Color(0xff7B1FA2);
Color appBackgroundColor = const Color(0xffF9F9F9);
Color greyColor = Colors.grey;
Color lightGreyColor = Colors.grey.withOpacity(0.3);
Color whiteColor = Colors.white;
Color blackColor = Colors.black;



TextStyle blackFontStyle({ fontSize, fontWeight}) {
  return GoogleFonts.poppins(
    textStyle: TextStyle(
      fontSize: fontSize,
      color: blackColor,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
    ),
  );
}

TextStyle greyFontStyle({  fontSize, fontWeight}) {
  return GoogleFonts.poppins(
    textStyle: TextStyle(
      fontSize: fontSize,
      color: greyColor,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
    ),
  );
}
TextStyle lightGreyFontStyle({  fontSize, fontWeight}) {
  return GoogleFonts.poppins(
    textStyle: TextStyle(
      fontSize: fontSize,
      color: lightGreyColor,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
    ),
  );
}

TextStyle whiteFontStyle({  fontSize, fontWeight}) {
  return GoogleFonts.poppins(
    textStyle: TextStyle(
      fontSize: fontSize,
      color: whiteColor,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
    ),
  );
}

TextStyle customFontStyle({ fontSize, fontWeight, color}) {
  return GoogleFonts.poppins(
    textStyle: TextStyle(
      fontSize: fontSize,
      color: color,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
    )
  );
}




