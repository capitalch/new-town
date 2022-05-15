import 'package:flutter/cupertino.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double width;
  static late double height;
  static late double horizontal;
  static late double vertical;
  static late double _safeAreaHorizontal;
  static late double _safeAreaVertical;
  static late double safeHorizontal;
  static late double safeVertical;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    width = _mediaQueryData.size.width;
    height = _mediaQueryData.size.height;
    horizontal = width / 100;
    vertical = height / 100;

    _safeAreaHorizontal = _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical = _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeHorizontal = (width - _safeAreaHorizontal) / 100;
    safeVertical = (height - _safeAreaVertical) / 100;
  }
}
