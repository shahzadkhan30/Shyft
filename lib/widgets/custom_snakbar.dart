import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snaki(
    {required context, required String msg}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        duration: const Duration(milliseconds: 1200),
        backgroundColor: appTextFieldBorderColors,
        behavior: SnackBarBehavior.floating,
        content: Text(msg,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white))),
  );
}
