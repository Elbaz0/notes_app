import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/edit_notes_body.dart';

class edit_notes_view extends StatelessWidget {
  const edit_notes_view({super.key, required this.note});
  final notes_model note;
  @override
  Widget build(BuildContext context) {
    return edit_notes_body(
      note: note,
    );
  }
}
