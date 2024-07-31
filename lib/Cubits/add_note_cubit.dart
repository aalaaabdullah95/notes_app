import 'package:hive/hive.dart';
import 'package:notes_app/Cubits/add_note_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Model/note_model.dart';
import 'package:notes_app/constant.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBook);

      await noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
