import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_app_hive_db/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());


  void addNote(NoteModel note){

  }
}
