import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/Notes_cubit/notes_cubit.dart';
import 'package:note_app/widget/Show_Modal_bottom_sheet.dart';
import 'package:note_app/widget/notes_body.dart';

class Notes_page extends StatelessWidget {
  const Notes_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return const Show_Modal_bottom_sheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const Notes_body(),
    );
  }
}
