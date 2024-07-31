import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/Cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/Model/note_model.dart';
import 'package:notes_app/View/Widget/custom_button.dart';
import 'package:notes_app/View/Widget/custom_text_feild.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? tittle, subTittle;
  int? color;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextFeild(
            onSaved: (value) {
              tittle = value;
            },
            hint: "Tittle",
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFeild(
            onSaved: (value) {
              subTittle = value;
            },
            hint: "Content",
            maxLines: 5,
          ),
          SizedBox(
            height: 50,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    NoteModel noteModel = NoteModel(
                        color: Colors.blue.value,
                        date: DateTime.now().toString(),
                        subTittle: subTittle!,
                        tittle: tittle!);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
