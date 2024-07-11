import 'package:flutter/material.dart';
import 'package:note_app/widget/edit_notes_body.dart';

class notes_item_widget extends StatelessWidget {
  const notes_item_widget({super.key});

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
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    'Flutter',
                    style: TextStyle(fontSize: 26, color: Colors.black),
                  ),
                ),
                subtitle: Text(
                  "Build your correct with bazookaaa",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
                trailing: Icon(
                  Icons.delete,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  'date , 2024',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.4),
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
