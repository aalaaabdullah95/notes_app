import 'package:notes_app/Model/note_model.dart';

abstract class NotesState {}

class notesInitial extends NotesState {}

class notesLoading extends NotesState {}

class notesSuccess extends NotesState {
  final List<NoteModel> note;

  notesSuccess(this.note);
}

class notesFailure extends NotesState {
  final String errorMessage;

  notesFailure(this.errorMessage);
}
