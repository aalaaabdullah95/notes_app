import 'package:flutter/material.dart';
import 'package:notes_app/View/Widget/custom_app_bar.dart';
import 'package:notes_app/View/Widget/custom_text_feild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            icon: Icon(Icons.check),
            text: 'Edit Note',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFeild(
            hint: 'Tittle',
            maxLines: 1,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFeild(
            hint: 'Contenet',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
