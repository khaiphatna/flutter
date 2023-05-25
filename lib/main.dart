import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ScreenSize {
  Size designScreenSize = Size(375, 812); // Kích thước màn hình thiết kế (iPhone X)
  Size deviceScreenSize; // Kích thước màn hình thực tế của thiết bị

  void init(Size screenSize) {
    deviceScreenSize = screenSize;
  }

  double scaleWidth(num designNumber) {
    double scale = deviceScreenSize.width / designScreenSize.width;
    return designNumber * scale;
  }
}

void main() {
  // Tạo đối tượng ScreenSize
  var screenSize = ScreenSize();

  // Thiết lập kích thước màn hình thực tế của thiết bị
  screenSize.init(Size(430, 932));

  // Scale width theo giá trị thiết kế 100
  double scaledWidth = screenSize.scaleWidth(100);

  print('Scaled width: $scaledWidth');
}