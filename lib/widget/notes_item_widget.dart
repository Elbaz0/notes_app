import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/edit_notes_body.dart';

class notes_item_widget extends StatelessWidget {
  const notes_item_widget({super.key, required this.notes});
  final notes_model notes;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return edit_notes_body();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    notes.title,
                    style: TextStyle(fontSize: 26, color: Colors.black),
                  ),
                ),
                subtitle: Text(
                  notes.sub_title,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    notes.delete();
                  },
                  icon: Icon(
                    Icons.delete,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  notes.date,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
