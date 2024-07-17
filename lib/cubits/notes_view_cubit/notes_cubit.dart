import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());

  Notes_view(notes_model note) async {
    Noteloading();
    try {
      var noteBox = Hive.box(Kboxname);
      emit(Notesuccess(noteBox.values.toList()));
    } catch (e) {
      Notefaild(e.toString());
    }
  }
}
