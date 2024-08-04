import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/Cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/Model/note_model.dart';
import 'package:notes_app/constant.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(notesInitial());
  List<NoteModel>? notes;
  fetchAllNote() {
    var noteBox = Hive.box<NoteModel>(kNotesBook);

    notes = noteBox.values.toList();
    emit(notesSucess());
  }
}
