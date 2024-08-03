import 'package:flutter/material.dart';

final MediaQueryData media =
    MediaQueryData.fromView(WidgetsBinding.instance.window);

/// This extention help us to make widget responsive.
extension NumberParsing on num {
  double w() => this * media.size.width / 100;

  double h() => this * (media.size.height) / 100;

  double hWithAppBar() =>
      this * (media.size.height - AppBar().preferredSize.height) / 100;
}
