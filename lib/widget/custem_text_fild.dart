import 'package:flutter/material.dart';

class custem_text_fild extends StatelessWidget {
  const custem_text_fild({
    super.key,
    required this.hinttext,
    this.maxline = 1,
    this.onsave,
    required this.onChange,
  });
  final int maxline;
  final String hinttext;
  final void Function(String?)? onsave;
  final void Function(String?)? onChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data!.isEmpty) {
          return 'filed requierd';
        }
      },
      onSaved: onsave,
      onChanged: onChange,
      maxLines: maxline,
      decoration: InputDecoration(
        hintText: hinttext,
        border: Border_style(),
        enabledBorder: Border_style(),
      ),
    );
  }

  OutlineInputBorder Border_style() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      borderSide: BorderSide(
        color: Colors.white,
      ),
    );
  }
}
