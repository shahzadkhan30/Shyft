import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constant/app_colors.dart';

Widget customTextField({
  required String mYhintText,
  myControler,
  required FormFieldValidator<String>? fieldValidator,
  onchange,
  List<TextInputFormatter>? inputparamerts,
  bool? removeBorder,
  required keyBordType,
  required maxLiness,
}) {
  return TextFormField(
    style: const TextStyle(color: Colors.black),
    inputFormatters: inputparamerts ?? [],
    validator: fieldValidator,
    onChanged: onchange ?? (val) {},
    maxLines: maxLiness,
    keyboardType: keyBordType,
    controller: myControler,
    decoration: InputDecoration(
        hintText: mYhintText,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 16),
        contentPadding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
        filled: true,
        fillColor: removeBorder == true ? appTextFieldfillColors : Colors.white,
        focusColor:
            removeBorder == true ? appTextFieldfillColors : Colors.white,
        hoverColor:
            removeBorder == true ? appTextFieldfillColors : Colors.white,
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: appTextFieldBorderColors, width: 1.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: removeBorder == true
                  ? Colors.transparent
                  : appTextFieldBorderColors,
              width: 1.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: removeBorder == true
                  ? Colors.transparent
                  : appTextFieldBorderColors,
              width: 1.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: removeBorder == true
                  ? Colors.transparent
                  : appTextFieldBorderColors,
              width: 1.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: removeBorder == true
                  ? Colors.transparent
                  : appTextFieldBorderColors,
              width: 1.0),
          borderRadius: BorderRadius.circular(5.0),
        )),
  );
}
