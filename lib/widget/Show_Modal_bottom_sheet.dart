import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/Notes_cubit/notes_cubit.dart';

import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/widget/Validate_show_modal.dart';

class Show_Modal_bottom_sheet extends StatelessWidget {
  const Show_Modal_bottom_sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AddNoteCubit, AddNoteCubitState>(
          listener: (context, state) {
            if (state is AddNotesuccess) {
              BlocProvider.of<NotesCubit>(context).view_notes();
              return Navigator.pop(context);
            }
            if (state is AddNotefaild) {}
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteloading ? true : false,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: const SingleChildScrollView(
                  child: Validate_show_modal(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
