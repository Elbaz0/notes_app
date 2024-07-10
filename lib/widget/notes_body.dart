import 'package:flutter/material.dart';
import 'package:note_app/widget/Show_Modal_bottom_sheet.dart';
import 'package:note_app/widget/app_bar.dart';
import 'package:note_app/widget/listview_notes.dart';

class Notes_body extends StatelessWidget {
  const Notes_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
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
          Appbar_widget(),
          SizedBox(
            height: 16,
          ),
          listview_notes(),
        ]),
      ),
    );
  }
}
