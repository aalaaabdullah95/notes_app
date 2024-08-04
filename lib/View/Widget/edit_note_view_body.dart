import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/Model/note_model.dart';
import 'package:notes_app/View/Widget/custom_app_bar.dart';
import 'package:notes_app/View/Widget/custom_text_feild.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? tittle, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.tittle = tittle ?? widget.note.tittle;
              widget.note.subTittle = content ?? widget.note.subTittle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNote();
              Navigator.pop(context);
            },
            icon: Icon(Icons.check),
            text: 'Edit Note',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFeild(
            onChanged: (value) {
              tittle = value;
            },
            hint: widget.note.tittle,
            maxLines: 1,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFeild(
            onChanged: (value) {
              content = value;
            },
            hint: widget.note.subTittle,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
