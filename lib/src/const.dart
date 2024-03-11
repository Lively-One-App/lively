import 'dart:ui';

import 'package:flutter/material.dart';

abstract class Const {
  
  
  static double get hightScreen{
    FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;
    Size size = view.physicalSize / view.devicePixelRatio;
    return size.height;
  }
  static double get widthScreen{
    FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;
    Size size = view.physicalSize / view.devicePixelRatio;
    return size.width;
  }

  static Size get sizeScreen{
    FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;
    Size size = view.physicalSize / view.devicePixelRatio;
    return size;
  }

}
