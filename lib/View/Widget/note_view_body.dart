import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/View/Widget/custom_app_bar.dart';
import 'package:notes_app/View/Widget/custom_note_item.dart';
import 'package:notes_app/View/Widget/notes_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomAppBar(),
          Expanded(child: NotesLestView()),
        ],
      ),
    );
  }
}
