import 'package:flutter/material.dart';

class CustomText extends Text {
  CustomText(
    String data, {
    Key? key,
    TextStyle? style,
    TextAlign? textAlign,
    TextDirection? textDirection,
  }) : super(
          data,
          key: key,
          style: (style ?? const TextStyle()).merge(
            const TextStyle(
              fontFamily: 'PlusJakartaSans',
            ),
          ),
          textAlign: textAlign,
          textDirection: textDirection,
        );

  static TextStyle textStyle() {
    return const TextStyle(
      fontFamily: 'PlusJakartaSans',
    );
  }
}
