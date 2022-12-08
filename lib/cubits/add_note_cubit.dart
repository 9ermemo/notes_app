import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app_hive_db/constants.dart';

import '../models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  void addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      emit(AddNoteSuccess());
      final notesBox = await Hive.openBox<NoteModel>(kNotesBox);
      await notesBox.add(note);
    } catch (e) {
      emit(AddNoteFailure(error: e.toString()));
    }
  }
}
