import 'package:flutter/material.dart';

class custem_text_fild extends StatelessWidget {
  const custem_text_fild({super.key, required this.hinttext, this.maxline = 1});
  final int maxline;
  final String hinttext;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxline,
      decoration: InputDecoration(
        hintText: hinttext,
        border: Border_style(),
        enabledBorder: Border_style(),
      ),
    );
  }

  OutlineInputBorder Border_style() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      borderSide: BorderSide(
        color: Colors.white,
      ),
    );
  }
}
