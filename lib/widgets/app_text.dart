import 'package:flutter/material.dart';

Widget appText(
    {required String myText,
    double? myfontSize,
    bool isItalic = false,
    bool isCenter = true,
    TextStyle? googleFont,
    FontWeight? mfontweight,
    Color? myColors}) {
  return Builder(builder: (context) {
    return Text(
      myText,
      textAlign: isCenter ? TextAlign.center : TextAlign.left,
      style: googleFont ??
          TextStyle(
              fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
              color: myColors ?? Colors.black,
              fontWeight: mfontweight ?? FontWeight.normal,
              fontSize: myfontSize ?? 12),
    );
  });
}
