import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());

  add_note(notes_model note) async {
    AddNoteloading();
    try {
      var noteBox = Hive.box(Kboxname);
      emit(AddNotesuccess());
      await noteBox.add(note);
    } catch (e) {
      AddNotefaild(erroremsg: e.toString());
    }
  }
}
