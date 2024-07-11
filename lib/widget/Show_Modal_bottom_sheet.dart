import 'package:flutter/material.dart';
import 'package:note_app/widget/custem_text_fild.dart';

class Show_Modal_bottom_sheet extends StatelessWidget {
  const Show_Modal_bottom_sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          custem_text_fild(
            hinttext: 'title',
          ),
          SizedBox(
            height: 20,
          ),
          custem_text_fild(
            hinttext: 'content',
            maxline: 5,
          ),
        ],
      ),
    );
  }
}
