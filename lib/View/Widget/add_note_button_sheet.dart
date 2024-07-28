import 'package:flutter/material.dart';
import 'package:notes_app/View/Widget/custom_button.dart';
import 'package:notes_app/View/Widget/custom_text_feild.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextFeild(
              hint: "Tittle",
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFeild(
              hint: "Content",
              maxLines: 5,
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
