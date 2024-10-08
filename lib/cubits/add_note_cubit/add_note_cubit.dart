import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubit() : super(AddNoteCubitInitial());

  add_note(notes_model note) async {
    emit(AddNoteloading());
    try {
      var noteBox = Hive.box<notes_model>(Kboxname);
      await noteBox.add(note);
      emit(AddNotesuccess());
    } catch (e) {
      emit(AddNotefaild(e.toString()));
    }
  }
}
