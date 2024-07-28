import 'package:flutter/material.dart';
import 'package:notes_app/View/Widget/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    required this.text,
    required this.icon,
  });
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        CustomSearchIcon(
          icon: icon,
        )
      ],
    );
  }
}
