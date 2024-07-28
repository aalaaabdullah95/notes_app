import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({required this.hint, this.maxLines = 1});
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: kPrimaryColor),
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(
          Color: kPrimaryColor,
        ),
      ),
    );
  }

  OutlineInputBorder BuildBorder({Color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color ?? Colors.white),
    );
  }
}
