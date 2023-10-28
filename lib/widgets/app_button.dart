import 'package:flutter/material.dart';
import '../constant/app_colors.dart';

Widget appButton(
    {required String buttonText,
    required ontapfunction,
    Color? textColor,
    Color? buttonColor,
    double? myfontSize}) {
  return Builder(builder: (context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        backgroundColor: buttonColor != null
            ? MaterialStateProperty.all(buttonColor)
            : MaterialStateProperty.all(
                appBlueColor,
              ),
      ),
      onPressed: ontapfunction,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Center(
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: textColor ?? Colors.white, fontSize: myfontSize ?? 14),
          ),
        ),
      ),
    );
  });
}
