import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/Notes_cubit/notes_cubit.dart';
import 'package:note_app/widget/Show_Modal_bottom_sheet.dart';
import 'package:note_app/widget/app_bar.dart';
import 'package:note_app/widget/listview_notes.dart';

class Notes_body extends StatefulWidget {
  const Notes_body({super.key});

  @override
  State<Notes_body> createState() => _Notes_bodyState();
}

class _Notes_bodyState extends State<Notes_body> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).view_notes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [
        SizedBox(
          height: 60,
        ),
        Appbar_widget(
          text: 'Notes',
          icon: Icons.search,
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(child: listview_notes()),
      ]),
    );
  }
}
