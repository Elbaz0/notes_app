import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/Notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';

import 'package:note_app/widget/app_bar.dart';
import 'package:note_app/widget/custem_text_fild.dart';

class edit_notes_body extends StatefulWidget {
  const edit_notes_body({super.key, required this.note});
  final notes_model note;
  @override
  State<edit_notes_body> createState() => _edit_notes_bodyState();
}

class _edit_notes_bodyState extends State<edit_notes_body> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(children: [
          const SizedBox(
            height: 60,
          ),
          Appbar_widget(
            text: 'Edit',
            icon: Icons.check,
            onpressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.sub_title = subTitle ?? widget.note.sub_title;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).view_notes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 16,
          ),
          custem_text_fild(
            hinttext: widget.note.title,
            onChange: (data) {
              title = data;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          custem_text_fild(
            hinttext: widget.note.sub_title,
            maxline: 5,
            onChange: (data) {
              subTitle = data;
            },
          )
        ]),
      ),
    );
  }
}
