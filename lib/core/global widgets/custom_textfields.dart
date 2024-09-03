// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  bool? obscureText;
  TextEditingController? controller;
  Color? cursorColor,
      disableBorderColor,
      focusBorderColor,
      fillColor,
      focusColor,
      enableBorderColor;
  bool? autoFocus, filled;
  String? hintText;
  TextStyle? style, hintStyle;
  Widget? prefixIcon, sufixIcon;
  FormFieldValidator? validator;
  TextInputType? keyboardType;
  int? maxLength;
  int? maxLine;
  VoidCallback? onTap;
  bool? readOnly;
  ValueChanged? onChanged;
  EdgeInsets? contentPadding;
  Function(String?)? onSubmitted;
  List<TextInputFormatter>? inputFormater;
  bool? isDecoration;
  InputBorder? errorBorder;
  double? border;
  TextInputAction? textInputAction;
  String? lableText;

  CustomTextField(
      {super.key,
      this.obscureText,
      this.controller,
      this.errorBorder,
      this.autoFocus,
      this.cursorColor,
      this.lableText,
      this.disableBorderColor,
      this.fillColor,
      this.filled,
      this.focusBorderColor,
      this.focusColor,
      this.hintStyle,
      this.hintText,
      this.prefixIcon,
      this.style,
      this.sufixIcon,
      this.validator,
      this.keyboardType,
      this.maxLength,
      this.maxLine,
      this.onTap,
      this.readOnly,
      this.onChanged,
      this.onSubmitted,
      this.contentPadding,
      this.inputFormater,
      this.isDecoration,
      this.enableBorderColor,
      this.border,
      this.textInputAction});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      onFieldSubmitted: onSubmitted,
      inputFormatters: inputFormater,
      onChanged: onChanged,
      readOnly: readOnly ?? false,
      enableSuggestions: true,
      maxLines: maxLine,
      maxLength: maxLength,
      keyboardType: keyboardType ?? TextInputType.emailAddress,
      validator: validator,
      obscureText: obscureText ?? false,
      controller: controller,
      cursorColor: cursorColor,
      autofocus: autoFocus ?? false,
      style: style,
      onTap: onTap,
      decoration: InputDecoration(
          errorBorder: errorBorder ??
              OutlineInputBorder(
                  borderRadius: BorderRadius.circular(border ?? 50),
                  borderSide: const BorderSide(color: Colors.red, width: 1)),
          counterText: "",
          contentPadding: contentPadding != null
              ? contentPadding!
              : const EdgeInsets.all(16),
          hintText: hintText ?? "",
          hintStyle: hintStyle,
          labelText: lableText,
          disabledBorder: OutlineInputBorder(
            gapPadding: 30,
            borderRadius: BorderRadius.circular(border ?? 60),
            borderSide: BorderSide(
                color: disableBorderColor ?? Theme.of(context).hintColor,
                width: 1),
          ),
          focusedErrorBorder: errorBorder ??
              OutlineInputBorder(
                  borderRadius: BorderRadius.circular(border ?? 60.r),
                  borderSide: const BorderSide(color: Colors.red, width: 1)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: enableBorderColor ?? Theme.of(context).hintColor,
                  width: 1),
              borderRadius: BorderRadius.circular(border ?? 60.r)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(border ?? 60.r),
              borderSide: BorderSide(
                  color: focusBorderColor ?? Theme.of(context).hintColor,
                  width: 1)),
          prefixIcon: prefixIcon,
          fillColor: fillColor ?? Theme.of(context).hintColor.withOpacity(0.1),
          filled: filled ?? true,
          focusColor: focusColor,
          // enabled: true,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(border ?? 0),
          ),
          suffixIcon: sufixIcon),
    );
  }
}
