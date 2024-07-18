import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<notes_model>? notes;
  view_notes() {
    var notesBox = Hive.box<notes_model>(Kboxname);

    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
