import 'package:flutter/material.dart';
import 'package:note_app/widget/search_widget.dart';

class Appbar_widget extends StatelessWidget {
  const Appbar_widget({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
        const Spacer(
          flex: 1,
        ),
        search_icon_widget(
          icon: icon,
        ),
      ],
    );
  }
}
