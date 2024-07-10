import 'package:flutter/material.dart';
import 'package:note_app/widget/notes_item_widget.dart';

class listview_notes extends StatelessWidget {
  const listview_notes({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: notes_item_widget(),
          );
        },
      ),
    );
  }
}
