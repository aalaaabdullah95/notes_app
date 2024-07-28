import 'package:flutter/material.dart';

import 'package:notes_app/View/Widget/custom_app_bar.dart';

import 'package:notes_app/View/Widget/notes_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            icon: Icon(Icons.search),
            text: 'Notes',
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
