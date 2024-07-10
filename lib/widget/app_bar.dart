import 'package:flutter/material.dart';
import 'package:note_app/widget/search_widget.dart';

class Appbar_widget extends StatelessWidget {
  const Appbar_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 35),
        ),
        Spacer(
          flex: 1,
        ),
        search_icon_widget(),
      ],
    );
  }
}
