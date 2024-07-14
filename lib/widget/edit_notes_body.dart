import 'package:flutter/material.dart';

import 'package:note_app/widget/app_bar.dart';
import 'package:note_app/widget/custem_text_fild.dart';

class edit_notes_body extends StatelessWidget {
  edit_notes_body({super.key});
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(children: [
          SizedBox(
            height: 60,
          ),
          Appbar_widget(
            text: 'Edit',
            icon: Icons.check,
          ),
          SizedBox(
            height: 16,
          ),
          custem_text_fild(
            hinttext: 'title',
            onsave: (data) {
              title = data;
            },
          ),
          SizedBox(
            height: 20,
          ),
          custem_text_fild(
            hinttext: 'content',
            maxline: 5,
            onsave: (data) {
              content = data;
            },
          )
        ]),
      ),
    );
  }
}
