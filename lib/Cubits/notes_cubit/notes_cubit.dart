import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/Cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/Model/note_model.dart';
import 'package:notes_app/constant.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(notesInitial());
  fetchAllNote() async {
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBook);

      List<NoteModel> notes = await noteBox.values.toList();
      emit(notesSuccess(notes));
    } catch (e) {
      emit(notesFailure(e.toString()));
    }
  }
}
