import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWith;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double?  blockSizeVertical;

  void init (BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWith = _mediaQueryData!.size.width;
    screenHeight =  _mediaQueryData!.size.height;
    blockSizeHorizontal =  screenWith! / 100;
    blockSizeVertical = screenHeight! / 100;
  }

}