import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/Notes_cubit/notes_cubit.dart';
import 'package:note_app/widget/Show_Modal_bottom_sheet.dart';
import 'package:note_app/widget/app_bar.dart';
import 'package:note_app/widget/listview_notes.dart';

class Notes_body extends StatelessWidget {
  const Notes_body({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const Show_Modal_bottom_sheet();
              },
            );
          },
          child: const Icon(Icons.add),
        ),
        body: const Padding(
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
        ),
      ),
    );
  }
}
