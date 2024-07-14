import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/widget/Validate_show_modal.dart';

class Show_Modal_bottom_sheet extends StatelessWidget {
  const Show_Modal_bottom_sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BlocConsumer<AddNoteCubit, AddNoteCubitState>(
        listener: (context, state) {
          if (state is AddNotesuccess) {
            return Navigator.pop(context);
          }
          if (state is AddNotefaild) {
            return print('errore ${state.erroremsg}');
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            child: SingleChildScrollView(child: Validate_show_modal()),
            inAsyncCall: state is AddNoteloading ? true : false,
          );
        },
      ),
    );
  }
}
