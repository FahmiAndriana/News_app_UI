import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kWhite = Color(0xffffffff);
const Color KLightWhite = Color(0xffeff5f4);
const Color KLighterWhite = Color(0xfffcfcfc);

const Color KGrey = Color(0xff9397a0);
const Color KLightGrey = Color(0xffa7a7a7);

const Color KBlue = Color(0xff5474fd);
const Color KLightBlue = Color(0xff83b1ff);
const Color KLighterBlue = Color(0xffc1d4f9);

const Color KDarkBlue = Color(0xff19202D);

const double kBorderradius = 16.0;

final kBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(kBorderradius),
    borderSide: BorderSide.none);

final KkPoppinsBold =
    GoogleFonts.poppins(color: KDarkBlue, fontWeight: FontWeight.w700);

final KkPoppinsSemiBold =
    GoogleFonts.poppins(color: KDarkBlue, fontWeight: FontWeight.w600);

final KkPoppinsMedium =
    GoogleFonts.poppins(color: KDarkBlue, fontWeight: FontWeight.w500);

final KkPoppinsRegular =
    GoogleFonts.poppins(color: KDarkBlue, fontWeight: FontWeight.w400);
