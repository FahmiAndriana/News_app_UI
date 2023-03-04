import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQuearyData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  void init(BuildContext context) {
    _mediaQuearyData = MediaQuery.of(context);
    screenWidth = _mediaQuearyData!.size.width;
    screenHeight = _mediaQuearyData!.size.height;
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight! / 100;
  }
}
